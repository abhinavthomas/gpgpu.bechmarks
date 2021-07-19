; ModuleID = 'btC.cl'
source_filename = "btC.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @compute_rhs1(double* nocapture readonly %g_u, double* nocapture %g_us, double* nocapture %g_vs, double* nocapture %g_ws, double* nocapture %g_qs, double* nocapture %g_rho_i, double* nocapture %g_square, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %conv4 = trunc i64 %call3 to i32
  %cmp.not = icmp slt i32 %conv, %gp2
  %conv2 = trunc i64 %call1 to i32
  %cmp6.not = icmp slt i32 %conv2, %gp1
  %or.cond = and i1 %cmp.not, %cmp6.not
  %cmp9.not = icmp slt i32 %conv4, %gp0
  %or.cond163 = and i1 %or.cond, %cmp9.not
  br i1 %or.cond163, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %1 = bitcast double* %g_us to [163 x [163 x double]]*
  %2 = bitcast double* %g_vs to [163 x [163 x double]]*
  %3 = bitcast double* %g_ws to [163 x [163 x double]]*
  %4 = bitcast double* %g_qs to [163 x [163 x double]]*
  %5 = bitcast double* %g_rho_i to [163 x [163 x double]]*
  %6 = bitcast double* %g_square to [163 x [163 x double]]*
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %sext161 = shl i64 %call1, 32
  %idxprom11 = ashr exact i64 %sext161, 32
  %sext162 = shl i64 %call3, 32
  %idxprom13 = ashr exact i64 %sext162, 32
  %arrayidx15 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 0
  %7 = load double, double* %arrayidx15, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 1
  %8 = load double, double* %arrayidx23, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 2
  %9 = load double, double* %arrayidx31, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 3
  %10 = load double, double* %arrayidx39, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %7
  %arrayidx47 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %div, double* %arrayidx47, align 8, !tbaa !7
  %mul = fmul double %8, %div
  %arrayidx54 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %1, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul, double* %arrayidx54, align 8, !tbaa !7
  %mul56 = fmul double %div, %9
  %arrayidx62 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul56, double* %arrayidx62, align 8, !tbaa !7
  %mul64 = fmul double %div, %10
  %arrayidx70 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul64, double* %arrayidx70, align 8, !tbaa !7
  %mul76 = fmul double %9, %9
  %11 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %mul76)
  %12 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %11)
  %mul80 = fmul double %12, 5.000000e-01
  %mul81 = fmul double %div, %mul80
  %arrayidx87 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul81, double* %arrayidx87, align 8, !tbaa !7
  %mul88 = fmul double %div, %mul81
  %arrayidx94 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul88, double* %arrayidx94, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @compute_rhs2(double* nocapture readonly %g_forcing, double* nocapture %g_rhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !14 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %conv4 = trunc i64 %call3 to i32
  %cmp.not = icmp slt i32 %conv, %gp2
  %conv2 = trunc i64 %call1 to i32
  %cmp6.not = icmp slt i32 %conv2, %gp1
  %or.cond = and i1 %cmp.not, %cmp6.not
  %cmp9.not = icmp slt i32 %conv4, %gp0
  %or.cond47 = and i1 %or.cond, %cmp9.not
  br i1 %or.cond47, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast double* %g_forcing to [163 x [163 x [5 x double]]]*
  %1 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %sext45 = shl i64 %call1, 32
  %idxprom13 = ashr exact i64 %sext45, 32
  %sext46 = shl i64 %call3, 32
  %idxprom15 = ashr exact i64 %sext46, 32
  %arrayidx18 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %2 = load double, double* %arrayidx18, align 8, !tbaa !7
  %arrayidx26 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  store double %2, double* %arrayidx26, align 8, !tbaa !7
  %arrayidx18.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %3 = load double, double* %arrayidx18.1, align 8, !tbaa !7
  %arrayidx26.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  store double %3, double* %arrayidx26.1, align 8, !tbaa !7
  %arrayidx18.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %4 = load double, double* %arrayidx18.2, align 8, !tbaa !7
  %arrayidx26.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  store double %4, double* %arrayidx26.2, align 8, !tbaa !7
  %arrayidx18.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %5 = load double, double* %arrayidx18.3, align 8, !tbaa !7
  %arrayidx26.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  store double %5, double* %arrayidx26.3, align 8, !tbaa !7
  %arrayidx18.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  %6 = load double, double* %arrayidx18.4, align 8, !tbaa !7
  %arrayidx26.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  store double %6, double* %arrayidx26.4, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @compute_rhs3(double* readonly %g_u, double* nocapture readonly %g_us, double* nocapture readonly %g_vs, double* nocapture readonly %g_ws, double* nocapture readonly %g_qs, double* nocapture readonly %g_rho_i, double* nocapture readonly %g_square, double* %g_rhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !15 !kernel_arg_access_qual !16 !kernel_arg_type !17 !kernel_arg_base_type !17 !kernel_arg_type_qual !18 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  %sub5 = add nsw i32 %gp1, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast double* %g_us to [163 x [163 x double]]*
  %3 = bitcast double* %g_vs to [163 x [163 x double]]*
  %4 = bitcast double* %g_ws to [163 x [163 x double]]*
  %5 = bitcast double* %g_qs to [163 x [163 x double]]*
  %6 = bitcast double* %g_rho_i to [163 x [163 x double]]*
  %7 = bitcast double* %g_square to [163 x [163 x double]]*
  %8 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %9 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom8 = sext i32 %conv3 to i64
  %arrayidx11 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 0, i64 0
  %10 = load double, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx18 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 0, i64 1
  %11 = load double, double* %arrayidx18, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 0, i64 2
  %12 = load double, double* %arrayidx25, align 8, !tbaa !7
  %arrayidx32 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 0, i64 3
  %13 = load double, double* %arrayidx32, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 0, i64 4
  %14 = load double, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx46 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 1, i64 0
  %15 = load double, double* %arrayidx46, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 1, i64 1
  %16 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 1, i64 2
  %17 = load double, double* %arrayidx60, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 1, i64 3
  %18 = load double, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 1, i64 4
  %19 = load double, double* %arrayidx74, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 2, i64 0
  %20 = load double, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx88 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 2, i64 1
  %21 = load double, double* %arrayidx88, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 2, i64 2
  %22 = load double, double* %arrayidx95, align 8, !tbaa !7
  %arrayidx102 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 2, i64 3
  %23 = load double, double* %arrayidx102, align 8, !tbaa !7
  %arrayidx109 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 2, i64 4
  %24 = load double, double* %arrayidx109, align 8, !tbaa !7
  %arrayidx115 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom8, i64 0
  %25 = load double, double* %arrayidx115, align 8, !tbaa !7
  %arrayidx120 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom8, i64 1
  %26 = load double, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx125 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom8, i64 0
  %27 = load double, double* %arrayidx125, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom8, i64 1
  %28 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom8, i64 0
  %29 = load double, double* %arrayidx135, align 8, !tbaa !7
  %arrayidx140 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom8, i64 1
  %30 = load double, double* %arrayidx140, align 8, !tbaa !7
  %arrayidx145 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom8, i64 0
  %31 = load double, double* %arrayidx145, align 8, !tbaa !7
  %arrayidx150 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom8, i64 1
  %32 = load double, double* %arrayidx150, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 0
  %33 = load double, double* %arrayidx155, align 8, !tbaa !7
  %arrayidx160 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 1
  %34 = load double, double* %arrayidx160, align 8, !tbaa !7
  %arrayidx165 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 0
  %35 = load double, double* %arrayidx165, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 1
  %36 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx218 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 3, i64 0
  %37 = load double, double* %arrayidx218, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 3, i64 1
  %38 = load double, double* %arrayidx227, align 8, !tbaa !7
  %arrayidx236 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 3, i64 2
  %39 = load double, double* %arrayidx236, align 8, !tbaa !7
  %arrayidx245 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 3, i64 3
  %40 = load double, double* %arrayidx245, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 3, i64 4
  %41 = load double, double* %arrayidx254, align 8, !tbaa !7
  %arrayidx262 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom8, i64 2
  %42 = load double, double* %arrayidx262, align 8, !tbaa !7
  %arrayidx269 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom8, i64 2
  %43 = load double, double* %arrayidx269, align 8, !tbaa !7
  %arrayidx276 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom8, i64 2
  %44 = load double, double* %arrayidx276, align 8, !tbaa !7
  %arrayidx283 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom8, i64 2
  %45 = load double, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx290 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 2
  %46 = load double, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx297 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 2
  %47 = load double, double* %arrayidx297, align 8, !tbaa !7
  %arrayidx304 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 1, i64 0
  %48 = load double, double* %arrayidx304, align 8, !tbaa !7
  %49 = tail call double @llvm.fmuladd.f64(double %15, double -2.000000e+00, double %20)
  %add308 = fadd double %10, %49
  %50 = tail call double @llvm.fmuladd.f64(double %add308, double 0x40D2FC3000000001, double %48)
  %sub311 = fsub double %21, %11
  %51 = tail call double @llvm.fmuladd.f64(double %sub311, double -8.050000e+01, double %50)
  %arrayidx319 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 1, i64 1
  %52 = load double, double* %arrayidx319, align 8, !tbaa !7
  %53 = tail call double @llvm.fmuladd.f64(double %16, double -2.000000e+00, double %21)
  %add323 = fadd double %11, %53
  %54 = tail call double @llvm.fmuladd.f64(double %add323, double 0x40D2FC3000000001, double %52)
  %55 = tail call double @llvm.fmuladd.f64(double %26, double -2.000000e+00, double %42)
  %add324 = fadd double %25, %55
  %56 = tail call double @llvm.fmuladd.f64(double %add324, double 0x40AB004444444445, double %54)
  %57 = fneg double %11
  %neg = fmul double %25, %57
  %58 = tail call double @llvm.fmuladd.f64(double %21, double %42, double %neg)
  %sub329 = fsub double %24, %47
  %sub331 = fsub double %sub329, %14
  %add332 = fadd double %35, %sub331
  %59 = tail call double @llvm.fmuladd.f64(double %add332, double 4.000000e-01, double %58)
  %60 = tail call double @llvm.fmuladd.f64(double %59, double -8.050000e+01, double %56)
  %arrayidx340 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 1, i64 2
  %61 = load double, double* %arrayidx340, align 8, !tbaa !7
  %62 = tail call double @llvm.fmuladd.f64(double %17, double -2.000000e+00, double %22)
  %add344 = fadd double %12, %62
  %63 = tail call double @llvm.fmuladd.f64(double %add344, double 0x40D2FC3000000001, double %61)
  %64 = tail call double @llvm.fmuladd.f64(double %28, double -2.000000e+00, double %43)
  %add345 = fadd double %27, %64
  %65 = tail call double @llvm.fmuladd.f64(double %add345, double 0x40A4403333333334, double %63)
  %66 = fneg double %12
  %neg349 = fmul double %25, %66
  %67 = tail call double @llvm.fmuladd.f64(double %22, double %42, double %neg349)
  %68 = tail call double @llvm.fmuladd.f64(double %67, double -8.050000e+01, double %65)
  %arrayidx357 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 1, i64 3
  %69 = load double, double* %arrayidx357, align 8, !tbaa !7
  %70 = tail call double @llvm.fmuladd.f64(double %18, double -2.000000e+00, double %23)
  %add361 = fadd double %13, %70
  %71 = tail call double @llvm.fmuladd.f64(double %add361, double 0x40D2FC3000000001, double %69)
  %72 = tail call double @llvm.fmuladd.f64(double %30, double -2.000000e+00, double %44)
  %add362 = fadd double %29, %72
  %73 = tail call double @llvm.fmuladd.f64(double %add362, double 0x40A4403333333334, double %71)
  %74 = fneg double %13
  %neg366 = fmul double %25, %74
  %75 = tail call double @llvm.fmuladd.f64(double %23, double %42, double %neg366)
  %76 = tail call double @llvm.fmuladd.f64(double %75, double -8.050000e+01, double %73)
  %arrayidx374 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 1, i64 4
  %77 = load double, double* %arrayidx374, align 8, !tbaa !7
  %78 = tail call double @llvm.fmuladd.f64(double %19, double -2.000000e+00, double %24)
  %add378 = fadd double %14, %78
  %79 = tail call double @llvm.fmuladd.f64(double %add378, double 0x40D2FC3000000001, double %77)
  %80 = tail call double @llvm.fmuladd.f64(double %32, double -2.000000e+00, double %45)
  %add379 = fadd double %31, %80
  %81 = tail call double @llvm.fmuladd.f64(double %add379, double 0xC0A370D4FDF3B645, double %79)
  %82 = fmul double %26, -2.000000e+00
  %neg382 = fmul double %26, %82
  %83 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %neg382)
  %84 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %83)
  %85 = tail call double @llvm.fmuladd.f64(double %84, double 0x407B004444444445, double %81)
  %86 = fmul double %19, -2.000000e+00
  %neg387 = fmul double %86, %34
  %87 = tail call double @llvm.fmuladd.f64(double %24, double %46, double %neg387)
  %88 = tail call double @llvm.fmuladd.f64(double %14, double %33, double %87)
  %89 = tail call double @llvm.fmuladd.f64(double %88, double 0x40B3D884189374BC, double %85)
  %neg391 = fmul double %47, -4.000000e-01
  %90 = tail call double @llvm.fmuladd.f64(double %24, double 1.400000e+00, double %neg391)
  %neg395 = fmul double %35, -4.000000e-01
  %91 = tail call double @llvm.fmuladd.f64(double %14, double 1.400000e+00, double %neg395)
  %92 = fneg double %91
  %neg397 = fmul double %25, %92
  %93 = tail call double @llvm.fmuladd.f64(double %90, double %42, double %neg397)
  %94 = tail call double @llvm.fmuladd.f64(double %93, double -8.050000e+01, double %89)
  %neg408 = fmul double %20, -4.000000e+00
  %95 = tail call double @llvm.fmuladd.f64(double %15, double 5.000000e+00, double %neg408)
  %add411 = fadd double %37, %95
  %96 = tail call double @llvm.fmuladd.f64(double %add411, double -2.500000e-01, double %51)
  store double %96, double* %arrayidx304, align 8, !tbaa !7
  %neg408.1 = fmul double %21, -4.000000e+00
  %97 = tail call double @llvm.fmuladd.f64(double %16, double 5.000000e+00, double %neg408.1)
  %add411.1 = fadd double %38, %97
  %98 = tail call double @llvm.fmuladd.f64(double %add411.1, double -2.500000e-01, double %60)
  store double %98, double* %arrayidx319, align 8, !tbaa !7
  %neg408.2 = fmul double %22, -4.000000e+00
  %99 = tail call double @llvm.fmuladd.f64(double %17, double 5.000000e+00, double %neg408.2)
  %add411.2 = fadd double %39, %99
  %100 = tail call double @llvm.fmuladd.f64(double %add411.2, double -2.500000e-01, double %68)
  store double %100, double* %arrayidx340, align 8, !tbaa !7
  %neg408.3 = fmul double %23, -4.000000e+00
  %101 = tail call double @llvm.fmuladd.f64(double %18, double 5.000000e+00, double %neg408.3)
  %add411.3 = fadd double %40, %101
  %102 = tail call double @llvm.fmuladd.f64(double %add411.3, double -2.500000e-01, double %76)
  store double %102, double* %arrayidx357, align 8, !tbaa !7
  %neg408.4 = fmul double %24, -4.000000e+00
  %103 = tail call double @llvm.fmuladd.f64(double %19, double 5.000000e+00, double %neg408.4)
  %add411.4 = fadd double %41, %103
  %104 = tail call double @llvm.fmuladd.f64(double %add411.4, double -2.500000e-01, double %94)
  store double %104, double* %arrayidx374, align 8, !tbaa !7
  %arrayidx467 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 4, i64 0
  %105 = load double, double* %arrayidx467, align 8, !tbaa !7
  %arrayidx476 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 4, i64 1
  %106 = load double, double* %arrayidx476, align 8, !tbaa !7
  %arrayidx485 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 4, i64 2
  %107 = load double, double* %arrayidx485, align 8, !tbaa !7
  %arrayidx494 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 4, i64 3
  %108 = load double, double* %arrayidx494, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 4, i64 4
  %109 = load double, double* %arrayidx503, align 8, !tbaa !7
  %arrayidx511 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom8, i64 3
  %110 = load double, double* %arrayidx511, align 8, !tbaa !7
  %arrayidx518 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom8, i64 3
  %111 = load double, double* %arrayidx518, align 8, !tbaa !7
  %arrayidx525 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom8, i64 3
  %112 = load double, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx532 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom8, i64 3
  %113 = load double, double* %arrayidx532, align 8, !tbaa !7
  %arrayidx539 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 3
  %114 = load double, double* %arrayidx539, align 8, !tbaa !7
  %arrayidx546 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 3
  %115 = load double, double* %arrayidx546, align 8, !tbaa !7
  %arrayidx553 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 2, i64 0
  %116 = load double, double* %arrayidx553, align 8, !tbaa !7
  %117 = tail call double @llvm.fmuladd.f64(double %20, double -2.000000e+00, double %37)
  %add557 = fadd double %15, %117
  %118 = tail call double @llvm.fmuladd.f64(double %add557, double 0x40D2FC3000000001, double %116)
  %sub560 = fsub double %38, %16
  %119 = tail call double @llvm.fmuladd.f64(double %sub560, double -8.050000e+01, double %118)
  %arrayidx568 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 2, i64 1
  %120 = load double, double* %arrayidx568, align 8, !tbaa !7
  %121 = tail call double @llvm.fmuladd.f64(double %21, double -2.000000e+00, double %38)
  %add572 = fadd double %16, %121
  %122 = tail call double @llvm.fmuladd.f64(double %add572, double 0x40D2FC3000000001, double %120)
  %123 = tail call double @llvm.fmuladd.f64(double %42, double -2.000000e+00, double %110)
  %add573 = fadd double %26, %123
  %124 = tail call double @llvm.fmuladd.f64(double %add573, double 0x40AB004444444445, double %122)
  %125 = fneg double %16
  %neg577 = fmul double %26, %125
  %126 = tail call double @llvm.fmuladd.f64(double %38, double %110, double %neg577)
  %sub579 = fsub double %41, %115
  %sub581 = fsub double %sub579, %19
  %add582 = fadd double %36, %sub581
  %127 = tail call double @llvm.fmuladd.f64(double %add582, double 4.000000e-01, double %126)
  %128 = tail call double @llvm.fmuladd.f64(double %127, double -8.050000e+01, double %124)
  %arrayidx590 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 2, i64 2
  %129 = load double, double* %arrayidx590, align 8, !tbaa !7
  %130 = tail call double @llvm.fmuladd.f64(double %22, double -2.000000e+00, double %39)
  %add594 = fadd double %17, %130
  %131 = tail call double @llvm.fmuladd.f64(double %add594, double 0x40D2FC3000000001, double %129)
  %132 = tail call double @llvm.fmuladd.f64(double %43, double -2.000000e+00, double %111)
  %add595 = fadd double %28, %132
  %133 = tail call double @llvm.fmuladd.f64(double %add595, double 0x40A4403333333334, double %131)
  %134 = fneg double %17
  %neg599 = fmul double %26, %134
  %135 = tail call double @llvm.fmuladd.f64(double %39, double %110, double %neg599)
  %136 = tail call double @llvm.fmuladd.f64(double %135, double -8.050000e+01, double %133)
  %arrayidx607 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 2, i64 3
  %137 = load double, double* %arrayidx607, align 8, !tbaa !7
  %138 = tail call double @llvm.fmuladd.f64(double %23, double -2.000000e+00, double %40)
  %add611 = fadd double %18, %138
  %139 = tail call double @llvm.fmuladd.f64(double %add611, double 0x40D2FC3000000001, double %137)
  %140 = tail call double @llvm.fmuladd.f64(double %44, double -2.000000e+00, double %112)
  %add612 = fadd double %30, %140
  %141 = tail call double @llvm.fmuladd.f64(double %add612, double 0x40A4403333333334, double %139)
  %142 = fneg double %18
  %neg616 = fmul double %26, %142
  %143 = tail call double @llvm.fmuladd.f64(double %40, double %110, double %neg616)
  %144 = tail call double @llvm.fmuladd.f64(double %143, double -8.050000e+01, double %141)
  %arrayidx624 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 2, i64 4
  %145 = load double, double* %arrayidx624, align 8, !tbaa !7
  %146 = tail call double @llvm.fmuladd.f64(double %24, double -2.000000e+00, double %41)
  %add628 = fadd double %19, %146
  %147 = tail call double @llvm.fmuladd.f64(double %add628, double 0x40D2FC3000000001, double %145)
  %148 = tail call double @llvm.fmuladd.f64(double %45, double -2.000000e+00, double %113)
  %add629 = fadd double %32, %148
  %149 = tail call double @llvm.fmuladd.f64(double %add629, double 0xC0A370D4FDF3B645, double %147)
  %150 = fmul double %42, -2.000000e+00
  %neg632 = fmul double %42, %150
  %151 = tail call double @llvm.fmuladd.f64(double %110, double %110, double %neg632)
  %152 = tail call double @llvm.fmuladd.f64(double %26, double %26, double %151)
  %153 = tail call double @llvm.fmuladd.f64(double %152, double 0x407B004444444445, double %149)
  %154 = fmul double %24, -2.000000e+00
  %neg637 = fmul double %154, %46
  %155 = tail call double @llvm.fmuladd.f64(double %41, double %114, double %neg637)
  %156 = tail call double @llvm.fmuladd.f64(double %19, double %34, double %155)
  %157 = tail call double @llvm.fmuladd.f64(double %156, double 0x40B3D884189374BC, double %153)
  %neg641 = fmul double %115, -4.000000e-01
  %158 = tail call double @llvm.fmuladd.f64(double %41, double 1.400000e+00, double %neg641)
  %neg645 = fmul double %36, -4.000000e-01
  %159 = tail call double @llvm.fmuladd.f64(double %19, double 1.400000e+00, double %neg645)
  %160 = fneg double %159
  %neg647 = fmul double %26, %160
  %161 = tail call double @llvm.fmuladd.f64(double %158, double %110, double %neg647)
  %162 = tail call double @llvm.fmuladd.f64(double %161, double -8.050000e+01, double %157)
  %mul659 = fmul double %20, 6.000000e+00
  %163 = tail call double @llvm.fmuladd.f64(double %15, double -4.000000e+00, double %mul659)
  %164 = tail call double @llvm.fmuladd.f64(double %37, double -4.000000e+00, double %163)
  %add664 = fadd double %105, %164
  %165 = tail call double @llvm.fmuladd.f64(double %add664, double -2.500000e-01, double %119)
  store double %165, double* %arrayidx553, align 8, !tbaa !7
  %mul659.1 = fmul double %21, 6.000000e+00
  %166 = tail call double @llvm.fmuladd.f64(double %16, double -4.000000e+00, double %mul659.1)
  %167 = tail call double @llvm.fmuladd.f64(double %38, double -4.000000e+00, double %166)
  %add664.1 = fadd double %106, %167
  %168 = tail call double @llvm.fmuladd.f64(double %add664.1, double -2.500000e-01, double %128)
  store double %168, double* %arrayidx568, align 8, !tbaa !7
  %mul659.2 = fmul double %22, 6.000000e+00
  %169 = tail call double @llvm.fmuladd.f64(double %17, double -4.000000e+00, double %mul659.2)
  %170 = tail call double @llvm.fmuladd.f64(double %39, double -4.000000e+00, double %169)
  %add664.2 = fadd double %107, %170
  %171 = tail call double @llvm.fmuladd.f64(double %add664.2, double -2.500000e-01, double %136)
  store double %171, double* %arrayidx590, align 8, !tbaa !7
  %mul659.3 = fmul double %23, 6.000000e+00
  %172 = tail call double @llvm.fmuladd.f64(double %18, double -4.000000e+00, double %mul659.3)
  %173 = tail call double @llvm.fmuladd.f64(double %40, double -4.000000e+00, double %172)
  %add664.3 = fadd double %108, %173
  %174 = tail call double @llvm.fmuladd.f64(double %add664.3, double -2.500000e-01, double %144)
  store double %174, double* %arrayidx607, align 8, !tbaa !7
  %mul659.4 = fmul double %24, 6.000000e+00
  %175 = tail call double @llvm.fmuladd.f64(double %19, double -4.000000e+00, double %mul659.4)
  %176 = tail call double @llvm.fmuladd.f64(double %41, double -4.000000e+00, double %175)
  %add664.4 = fadd double %109, %176
  %177 = tail call double @llvm.fmuladd.f64(double %add664.4, double -2.500000e-01, double %162)
  store double %177, double* %arrayidx624, align 8, !tbaa !7
  %cmp678.not2105 = icmp slt i32 %gp0, 7
  %.pre2323 = add nsw i32 %gp0, -3
  br i1 %cmp678.not2105, label %for.end940, label %for.body680.preheader

for.body680.preheader:                            ; preds = %if.end
  %wide.trip.count = zext i32 %.pre2323 to i64
  br label %for.body680

for.body680:                                      ; preds = %for.body680.preheader, %for.body680
  %p_u.sroa.54.0 = phi double [ %24, %for.body680.preheader ], [ %p_up1.sroa.50.0, %for.body680 ]
  %p_u.sroa.41.0 = phi double [ %23, %for.body680.preheader ], [ %p_up1.sroa.38.0, %for.body680 ]
  %p_u.sroa.28.0 = phi double [ %22, %for.body680.preheader ], [ %p_up1.sroa.26.0, %for.body680 ]
  %p_u.sroa.15.0 = phi double [ %21, %for.body680.preheader ], [ %p_up1.sroa.14.0, %for.body680 ]
  %p_u.sroa.0.0 = phi double [ %20, %for.body680.preheader ], [ %p_up1.sroa.0.0, %for.body680 ]
  %p_up1.sroa.50.0 = phi double [ %41, %for.body680.preheader ], [ %p_up2.sroa.42.0, %for.body680 ]
  %p_up1.sroa.38.0 = phi double [ %40, %for.body680.preheader ], [ %p_up2.sroa.32.0, %for.body680 ]
  %p_up1.sroa.26.0 = phi double [ %39, %for.body680.preheader ], [ %p_up2.sroa.22.0, %for.body680 ]
  %p_up1.sroa.14.0 = phi double [ %38, %for.body680.preheader ], [ %p_up2.sroa.12.0, %for.body680 ]
  %p_up1.sroa.0.0 = phi double [ %37, %for.body680.preheader ], [ %p_up2.sroa.0.0, %for.body680 ]
  %p_up2.sroa.42.0 = phi double [ %109, %for.body680.preheader ], [ %183, %for.body680 ]
  %p_up2.sroa.32.0 = phi double [ %108, %for.body680.preheader ], [ %182, %for.body680 ]
  %p_up2.sroa.22.0 = phi double [ %107, %for.body680.preheader ], [ %181, %for.body680 ]
  %p_up2.sroa.12.0 = phi double [ %106, %for.body680.preheader ], [ %180, %for.body680 ]
  %p_up2.sroa.0.0 = phi double [ %105, %for.body680.preheader ], [ %179, %for.body680 ]
  %p_um1.sroa.0.0 = phi double [ %15, %for.body680.preheader ], [ %p_u.sroa.0.0, %for.body680 ]
  %p_um1.sroa.15.0 = phi double [ %16, %for.body680.preheader ], [ %p_u.sroa.15.0, %for.body680 ]
  %p_um1.sroa.27.0 = phi double [ %17, %for.body680.preheader ], [ %p_u.sroa.28.0, %for.body680 ]
  %p_um1.sroa.39.0 = phi double [ %18, %for.body680.preheader ], [ %p_u.sroa.41.0, %for.body680 ]
  %p_um1.sroa.51.0 = phi double [ %19, %for.body680.preheader ], [ %p_u.sroa.54.0, %for.body680 ]
  %indvars.iv = phi i64 [ 3, %for.body680.preheader ], [ %indvars.iv.next, %for.body680 ]
  %p_us.02117 = phi double [ %42, %for.body680.preheader ], [ %p_usp1.02116, %for.body680 ]
  %p_usp1.02116 = phi double [ %110, %for.body680.preheader ], [ %184, %for.body680 ]
  %p_vs.02115 = phi double [ %43, %for.body680.preheader ], [ %p_vsp1.02114, %for.body680 ]
  %p_vsp1.02114 = phi double [ %111, %for.body680.preheader ], [ %185, %for.body680 ]
  %p_squarep1.02113 = phi double [ %115, %for.body680.preheader ], [ %189, %for.body680 ]
  %p_square.02112 = phi double [ %47, %for.body680.preheader ], [ %p_squarep1.02113, %for.body680 ]
  %p_rho_ip1.02111 = phi double [ %114, %for.body680.preheader ], [ %188, %for.body680 ]
  %p_rho_i.02110 = phi double [ %46, %for.body680.preheader ], [ %p_rho_ip1.02111, %for.body680 ]
  %p_qsp1.02109 = phi double [ %113, %for.body680.preheader ], [ %187, %for.body680 ]
  %p_qs.02108 = phi double [ %45, %for.body680.preheader ], [ %p_qsp1.02109, %for.body680 ]
  %p_wsp1.02107 = phi double [ %112, %for.body680.preheader ], [ %186, %for.body680 ]
  %p_ws.02106 = phi double [ %44, %for.body680.preheader ], [ %p_wsp1.02107, %for.body680 ]
  %178 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx728 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %178, i64 0
  %179 = load double, double* %arrayidx728, align 8, !tbaa !7
  %arrayidx737 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %178, i64 1
  %180 = load double, double* %arrayidx737, align 8, !tbaa !7
  %arrayidx746 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %178, i64 2
  %181 = load double, double* %arrayidx746, align 8, !tbaa !7
  %arrayidx755 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %178, i64 3
  %182 = load double, double* %arrayidx755, align 8, !tbaa !7
  %arrayidx764 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %178, i64 4
  %183 = load double, double* %arrayidx764, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx772 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %184 = load double, double* %arrayidx772, align 8, !tbaa !7
  %arrayidx779 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %185 = load double, double* %arrayidx779, align 8, !tbaa !7
  %arrayidx786 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %186 = load double, double* %arrayidx786, align 8, !tbaa !7
  %arrayidx793 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %187 = load double, double* %arrayidx793, align 8, !tbaa !7
  %arrayidx800 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %188 = load double, double* %arrayidx800, align 8, !tbaa !7
  %arrayidx807 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %189 = load double, double* %arrayidx807, align 8, !tbaa !7
  %arrayidx814 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 0
  %190 = load double, double* %arrayidx814, align 8, !tbaa !7
  %191 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.0, double -2.000000e+00, double %p_up2.sroa.0.0)
  %add818 = fadd double %p_u.sroa.0.0, %191
  %192 = tail call double @llvm.fmuladd.f64(double %add818, double 0x40D2FC3000000001, double %190)
  %sub821 = fsub double %p_up2.sroa.12.0, %p_u.sroa.15.0
  %193 = tail call double @llvm.fmuladd.f64(double %sub821, double -8.050000e+01, double %192)
  %arrayidx829 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 1
  %194 = load double, double* %arrayidx829, align 8, !tbaa !7
  %195 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.0, double -2.000000e+00, double %p_up2.sroa.12.0)
  %add833 = fadd double %p_u.sroa.15.0, %195
  %196 = tail call double @llvm.fmuladd.f64(double %add833, double 0x40D2FC3000000001, double %194)
  %197 = tail call double @llvm.fmuladd.f64(double %p_usp1.02116, double -2.000000e+00, double %184)
  %add834 = fadd double %p_us.02117, %197
  %198 = tail call double @llvm.fmuladd.f64(double %add834, double 0x40AB004444444445, double %196)
  %199 = fneg double %p_u.sroa.15.0
  %neg838 = fmul double %p_us.02117, %199
  %200 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.0, double %184, double %neg838)
  %sub840 = fsub double %p_up2.sroa.42.0, %189
  %sub842 = fsub double %sub840, %p_u.sroa.54.0
  %add843 = fadd double %p_square.02112, %sub842
  %201 = tail call double @llvm.fmuladd.f64(double %add843, double 4.000000e-01, double %200)
  %202 = tail call double @llvm.fmuladd.f64(double %201, double -8.050000e+01, double %198)
  %arrayidx851 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 2
  %203 = load double, double* %arrayidx851, align 8, !tbaa !7
  %204 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.0, double -2.000000e+00, double %p_up2.sroa.22.0)
  %add855 = fadd double %p_u.sroa.28.0, %204
  %205 = tail call double @llvm.fmuladd.f64(double %add855, double 0x40D2FC3000000001, double %203)
  %206 = tail call double @llvm.fmuladd.f64(double %p_vsp1.02114, double -2.000000e+00, double %185)
  %add856 = fadd double %p_vs.02115, %206
  %207 = tail call double @llvm.fmuladd.f64(double %add856, double 0x40A4403333333334, double %205)
  %208 = fneg double %p_u.sroa.28.0
  %neg860 = fmul double %p_us.02117, %208
  %209 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.0, double %184, double %neg860)
  %210 = tail call double @llvm.fmuladd.f64(double %209, double -8.050000e+01, double %207)
  %arrayidx868 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 3
  %211 = load double, double* %arrayidx868, align 8, !tbaa !7
  %212 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.0, double -2.000000e+00, double %p_up2.sroa.32.0)
  %add872 = fadd double %p_u.sroa.41.0, %212
  %213 = tail call double @llvm.fmuladd.f64(double %add872, double 0x40D2FC3000000001, double %211)
  %214 = tail call double @llvm.fmuladd.f64(double %p_wsp1.02107, double -2.000000e+00, double %186)
  %add873 = fadd double %p_ws.02106, %214
  %215 = tail call double @llvm.fmuladd.f64(double %add873, double 0x40A4403333333334, double %213)
  %216 = fneg double %p_u.sroa.41.0
  %neg877 = fmul double %p_us.02117, %216
  %217 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.0, double %184, double %neg877)
  %218 = tail call double @llvm.fmuladd.f64(double %217, double -8.050000e+01, double %215)
  %arrayidx885 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 4
  %219 = load double, double* %arrayidx885, align 8, !tbaa !7
  %220 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double -2.000000e+00, double %p_up2.sroa.42.0)
  %add889 = fadd double %p_u.sroa.54.0, %220
  %221 = tail call double @llvm.fmuladd.f64(double %add889, double 0x40D2FC3000000001, double %219)
  %222 = tail call double @llvm.fmuladd.f64(double %p_qsp1.02109, double -2.000000e+00, double %187)
  %add890 = fadd double %p_qs.02108, %222
  %223 = tail call double @llvm.fmuladd.f64(double %add890, double 0xC0A370D4FDF3B645, double %221)
  %224 = fmul double %p_usp1.02116, -2.000000e+00
  %neg893 = fmul double %p_usp1.02116, %224
  %225 = tail call double @llvm.fmuladd.f64(double %184, double %184, double %neg893)
  %226 = tail call double @llvm.fmuladd.f64(double %p_us.02117, double %p_us.02117, double %225)
  %227 = tail call double @llvm.fmuladd.f64(double %226, double 0x407B004444444445, double %223)
  %228 = fmul double %p_up1.sroa.50.0, -2.000000e+00
  %neg898 = fmul double %p_rho_ip1.02111, %228
  %229 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double %188, double %neg898)
  %230 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double %p_rho_i.02110, double %229)
  %231 = tail call double @llvm.fmuladd.f64(double %230, double 0x40B3D884189374BC, double %227)
  %neg902 = fmul double %189, -4.000000e-01
  %232 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double 1.400000e+00, double %neg902)
  %neg906 = fmul double %p_square.02112, -4.000000e-01
  %233 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double 1.400000e+00, double %neg906)
  %234 = fneg double %233
  %neg908 = fmul double %p_us.02117, %234
  %235 = tail call double @llvm.fmuladd.f64(double %232, double %184, double %neg908)
  %236 = tail call double @llvm.fmuladd.f64(double %235, double -8.050000e+01, double %231)
  %237 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.0.0, double -4.000000e+00, double %p_um1.sroa.0.0)
  %238 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.0, double 6.000000e+00, double %237)
  %239 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.0, double -4.000000e+00, double %238)
  %add926 = fadd double %239, %179
  %240 = tail call double @llvm.fmuladd.f64(double %add926, double -2.500000e-01, double %193)
  store double %240, double* %arrayidx814, align 8, !tbaa !7
  %241 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.15.0, double -4.000000e+00, double %p_um1.sroa.15.0)
  %242 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.0, double 6.000000e+00, double %241)
  %243 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.0, double -4.000000e+00, double %242)
  %add926.1 = fadd double %243, %180
  %244 = tail call double @llvm.fmuladd.f64(double %add926.1, double -2.500000e-01, double %202)
  store double %244, double* %arrayidx829, align 8, !tbaa !7
  %245 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.28.0, double -4.000000e+00, double %p_um1.sroa.27.0)
  %246 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.0, double 6.000000e+00, double %245)
  %247 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.0, double -4.000000e+00, double %246)
  %add926.2 = fadd double %247, %181
  %248 = tail call double @llvm.fmuladd.f64(double %add926.2, double -2.500000e-01, double %210)
  store double %248, double* %arrayidx851, align 8, !tbaa !7
  %249 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.41.0, double -4.000000e+00, double %p_um1.sroa.39.0)
  %250 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.0, double 6.000000e+00, double %249)
  %251 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.0, double -4.000000e+00, double %250)
  %add926.3 = fadd double %251, %182
  %252 = tail call double @llvm.fmuladd.f64(double %add926.3, double -2.500000e-01, double %218)
  store double %252, double* %arrayidx868, align 8, !tbaa !7
  %253 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double -4.000000e+00, double %p_um1.sroa.51.0)
  %254 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double 6.000000e+00, double %253)
  %255 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double -4.000000e+00, double %254)
  %add926.4 = fadd double %255, %183
  %256 = tail call double @llvm.fmuladd.f64(double %add926.4, double -2.500000e-01, double %236)
  store double %256, double* %arrayidx885, align 8, !tbaa !7
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end940.loopexit, label %for.body680

for.end940.loopexit:                              ; preds = %for.body680
  %.pre = fmul double %p_squarep1.02113, -4.000000e-01
  %.pre2321 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double 1.400000e+00, double %.pre)
  br label %for.end940

for.end940:                                       ; preds = %if.end, %for.end940.loopexit
  %.pre-phi2322 = phi double [ %232, %for.end940.loopexit ], [ %158, %if.end ]
  %.pre-phi = phi double [ %.pre2321, %for.end940.loopexit ], [ %90, %if.end ]
  %p_u.sroa.54.1 = phi double [ %p_up1.sroa.50.0, %for.end940.loopexit ], [ %24, %if.end ]
  %p_u.sroa.41.1 = phi double [ %p_up1.sroa.38.0, %for.end940.loopexit ], [ %23, %if.end ]
  %p_u.sroa.28.1 = phi double [ %p_up1.sroa.26.0, %for.end940.loopexit ], [ %22, %if.end ]
  %p_u.sroa.15.1 = phi double [ %p_up1.sroa.14.0, %for.end940.loopexit ], [ %21, %if.end ]
  %p_u.sroa.0.1 = phi double [ %p_up1.sroa.0.0, %for.end940.loopexit ], [ %20, %if.end ]
  %p_up1.sroa.50.1 = phi double [ %p_up2.sroa.42.0, %for.end940.loopexit ], [ %41, %if.end ]
  %p_up1.sroa.38.1 = phi double [ %p_up2.sroa.32.0, %for.end940.loopexit ], [ %40, %if.end ]
  %p_up1.sroa.26.1 = phi double [ %p_up2.sroa.22.0, %for.end940.loopexit ], [ %39, %if.end ]
  %p_up1.sroa.14.1 = phi double [ %p_up2.sroa.12.0, %for.end940.loopexit ], [ %38, %if.end ]
  %p_up1.sroa.0.1 = phi double [ %p_up2.sroa.0.0, %for.end940.loopexit ], [ %37, %if.end ]
  %p_up2.sroa.42.1 = phi double [ %183, %for.end940.loopexit ], [ %109, %if.end ]
  %p_up2.sroa.32.1 = phi double [ %182, %for.end940.loopexit ], [ %108, %if.end ]
  %p_up2.sroa.22.1 = phi double [ %181, %for.end940.loopexit ], [ %107, %if.end ]
  %p_up2.sroa.12.1 = phi double [ %180, %for.end940.loopexit ], [ %106, %if.end ]
  %p_up2.sroa.0.1 = phi double [ %179, %for.end940.loopexit ], [ %105, %if.end ]
  %p_um1.sroa.0.1 = phi double [ %p_u.sroa.0.0, %for.end940.loopexit ], [ %15, %if.end ]
  %p_um1.sroa.15.1 = phi double [ %p_u.sroa.15.0, %for.end940.loopexit ], [ %16, %if.end ]
  %p_um1.sroa.27.1 = phi double [ %p_u.sroa.28.0, %for.end940.loopexit ], [ %17, %if.end ]
  %p_um1.sroa.39.1 = phi double [ %p_u.sroa.41.0, %for.end940.loopexit ], [ %18, %if.end ]
  %p_um1.sroa.51.1 = phi double [ %p_u.sroa.54.0, %for.end940.loopexit ], [ %19, %if.end ]
  %p_ws.0.lcssa = phi double [ %p_wsp1.02107, %for.end940.loopexit ], [ %44, %if.end ]
  %p_wsp1.0.lcssa = phi double [ %186, %for.end940.loopexit ], [ %112, %if.end ]
  %p_qs.0.lcssa = phi double [ %p_qsp1.02109, %for.end940.loopexit ], [ %45, %if.end ]
  %p_qsp1.0.lcssa = phi double [ %187, %for.end940.loopexit ], [ %113, %if.end ]
  %p_rho_i.0.lcssa = phi double [ %p_rho_ip1.02111, %for.end940.loopexit ], [ %46, %if.end ]
  %p_rho_ip1.0.lcssa = phi double [ %188, %for.end940.loopexit ], [ %114, %if.end ]
  %p_square.0.lcssa = phi double [ %p_squarep1.02113, %for.end940.loopexit ], [ %47, %if.end ]
  %p_squarep1.0.lcssa = phi double [ %189, %for.end940.loopexit ], [ %115, %if.end ]
  %p_vsp1.0.lcssa = phi double [ %185, %for.end940.loopexit ], [ %111, %if.end ]
  %p_vs.0.lcssa = phi double [ %p_vsp1.02114, %for.end940.loopexit ], [ %43, %if.end ]
  %p_usp1.0.lcssa = phi double [ %184, %for.end940.loopexit ], [ %110, %if.end ]
  %p_us.0.lcssa = phi double [ %p_usp1.02116, %for.end940.loopexit ], [ %42, %if.end ]
  %add986 = add nsw i32 %gp0, -1
  %idxprom987 = sext i32 %add986 to i64
  %arrayidx989 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 0
  %257 = load double, double* %arrayidx989, align 8, !tbaa !7
  %arrayidx998 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 1
  %258 = load double, double* %arrayidx998, align 8, !tbaa !7
  %arrayidx1007 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 2
  %259 = load double, double* %arrayidx1007, align 8, !tbaa !7
  %arrayidx1016 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 3
  %260 = load double, double* %arrayidx1016, align 8, !tbaa !7
  %arrayidx1025 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 4
  %261 = load double, double* %arrayidx1025, align 8, !tbaa !7
  %add1031 = add nsw i32 %gp0, -2
  %idxprom1032 = sext i32 %add1031 to i64
  %arrayidx1033 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %262 = load double, double* %arrayidx1033, align 8, !tbaa !7
  %arrayidx1040 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %263 = load double, double* %arrayidx1040, align 8, !tbaa !7
  %arrayidx1047 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %264 = load double, double* %arrayidx1047, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %265 = load double, double* %arrayidx1054, align 8, !tbaa !7
  %arrayidx1061 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %266 = load double, double* %arrayidx1061, align 8, !tbaa !7
  %arrayidx1068 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %267 = load double, double* %arrayidx1068, align 8, !tbaa !7
  %idxprom1073 = sext i32 %.pre2323 to i64
  %arrayidx1075 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 0
  %268 = load double, double* %arrayidx1075, align 8, !tbaa !7
  %269 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double -2.000000e+00, double %p_up2.sroa.0.1)
  %add1079 = fadd double %p_u.sroa.0.1, %269
  %270 = tail call double @llvm.fmuladd.f64(double %add1079, double 0x40D2FC3000000001, double %268)
  %sub1082 = fsub double %p_up2.sroa.12.1, %p_u.sroa.15.1
  %271 = tail call double @llvm.fmuladd.f64(double %sub1082, double -8.050000e+01, double %270)
  %arrayidx1090 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 1
  %272 = load double, double* %arrayidx1090, align 8, !tbaa !7
  %273 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double -2.000000e+00, double %p_up2.sroa.12.1)
  %add1094 = fadd double %p_u.sroa.15.1, %273
  %274 = tail call double @llvm.fmuladd.f64(double %add1094, double 0x40D2FC3000000001, double %272)
  %275 = tail call double @llvm.fmuladd.f64(double %p_usp1.0.lcssa, double -2.000000e+00, double %262)
  %add1095 = fadd double %p_us.0.lcssa, %275
  %276 = tail call double @llvm.fmuladd.f64(double %add1095, double 0x40AB004444444445, double %274)
  %277 = fneg double %p_u.sroa.15.1
  %neg1099 = fmul double %p_us.0.lcssa, %277
  %278 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double %262, double %neg1099)
  %sub1101 = fsub double %p_up2.sroa.42.1, %267
  %sub1103 = fsub double %sub1101, %p_u.sroa.54.1
  %add1104 = fadd double %p_square.0.lcssa, %sub1103
  %279 = tail call double @llvm.fmuladd.f64(double %add1104, double 4.000000e-01, double %278)
  %280 = tail call double @llvm.fmuladd.f64(double %279, double -8.050000e+01, double %276)
  %arrayidx1112 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 2
  %281 = load double, double* %arrayidx1112, align 8, !tbaa !7
  %282 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double -2.000000e+00, double %p_up2.sroa.22.1)
  %add1116 = fadd double %p_u.sroa.28.1, %282
  %283 = tail call double @llvm.fmuladd.f64(double %add1116, double 0x40D2FC3000000001, double %281)
  %284 = tail call double @llvm.fmuladd.f64(double %p_vsp1.0.lcssa, double -2.000000e+00, double %263)
  %add1117 = fadd double %p_vs.0.lcssa, %284
  %285 = tail call double @llvm.fmuladd.f64(double %add1117, double 0x40A4403333333334, double %283)
  %286 = fneg double %p_u.sroa.28.1
  %neg1121 = fmul double %p_us.0.lcssa, %286
  %287 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double %262, double %neg1121)
  %288 = tail call double @llvm.fmuladd.f64(double %287, double -8.050000e+01, double %285)
  %arrayidx1129 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 3
  %289 = load double, double* %arrayidx1129, align 8, !tbaa !7
  %290 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double -2.000000e+00, double %p_up2.sroa.32.1)
  %add1133 = fadd double %p_u.sroa.41.1, %290
  %291 = tail call double @llvm.fmuladd.f64(double %add1133, double 0x40D2FC3000000001, double %289)
  %292 = tail call double @llvm.fmuladd.f64(double %p_wsp1.0.lcssa, double -2.000000e+00, double %264)
  %add1134 = fadd double %p_ws.0.lcssa, %292
  %293 = tail call double @llvm.fmuladd.f64(double %add1134, double 0x40A4403333333334, double %291)
  %294 = fneg double %p_u.sroa.41.1
  %neg1138 = fmul double %p_us.0.lcssa, %294
  %295 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double %262, double %neg1138)
  %296 = tail call double @llvm.fmuladd.f64(double %295, double -8.050000e+01, double %293)
  %arrayidx1146 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 4
  %297 = load double, double* %arrayidx1146, align 8, !tbaa !7
  %298 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double -2.000000e+00, double %p_up2.sroa.42.1)
  %add1150 = fadd double %p_u.sroa.54.1, %298
  %299 = tail call double @llvm.fmuladd.f64(double %add1150, double 0x40D2FC3000000001, double %297)
  %300 = tail call double @llvm.fmuladd.f64(double %p_qsp1.0.lcssa, double -2.000000e+00, double %265)
  %add1151 = fadd double %p_qs.0.lcssa, %300
  %301 = tail call double @llvm.fmuladd.f64(double %add1151, double 0xC0A370D4FDF3B645, double %299)
  %302 = fmul double %p_usp1.0.lcssa, -2.000000e+00
  %neg1154 = fmul double %p_usp1.0.lcssa, %302
  %303 = tail call double @llvm.fmuladd.f64(double %262, double %262, double %neg1154)
  %304 = tail call double @llvm.fmuladd.f64(double %p_us.0.lcssa, double %p_us.0.lcssa, double %303)
  %305 = tail call double @llvm.fmuladd.f64(double %304, double 0x407B004444444445, double %301)
  %306 = fmul double %p_up1.sroa.50.1, -2.000000e+00
  %neg1159 = fmul double %p_rho_ip1.0.lcssa, %306
  %307 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double %266, double %neg1159)
  %308 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.1, double %p_rho_i.0.lcssa, double %307)
  %309 = tail call double @llvm.fmuladd.f64(double %308, double 0x40B3D884189374BC, double %305)
  %neg1163 = fmul double %267, -4.000000e-01
  %310 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double 1.400000e+00, double %neg1163)
  %311 = fneg double %.pre-phi
  %neg1169 = fmul double %p_us.0.lcssa, %311
  %312 = tail call double @llvm.fmuladd.f64(double %310, double %262, double %neg1169)
  %313 = tail call double @llvm.fmuladd.f64(double %312, double -8.050000e+01, double %309)
  %314 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.0.1, double -4.000000e+00, double %p_um1.sroa.0.1)
  %315 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double 6.000000e+00, double %314)
  %316 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double -4.000000e+00, double %315)
  %317 = tail call double @llvm.fmuladd.f64(double %316, double -2.500000e-01, double %271)
  store double %317, double* %arrayidx1075, align 8, !tbaa !7
  %318 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.15.1, double -4.000000e+00, double %p_um1.sroa.15.1)
  %319 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double 6.000000e+00, double %318)
  %320 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double -4.000000e+00, double %319)
  %321 = tail call double @llvm.fmuladd.f64(double %320, double -2.500000e-01, double %280)
  store double %321, double* %arrayidx1090, align 8, !tbaa !7
  %322 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.28.1, double -4.000000e+00, double %p_um1.sroa.27.1)
  %323 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double 6.000000e+00, double %322)
  %324 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double -4.000000e+00, double %323)
  %325 = tail call double @llvm.fmuladd.f64(double %324, double -2.500000e-01, double %288)
  store double %325, double* %arrayidx1112, align 8, !tbaa !7
  %326 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.41.1, double -4.000000e+00, double %p_um1.sroa.39.1)
  %327 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double 6.000000e+00, double %326)
  %328 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double -4.000000e+00, double %327)
  %329 = tail call double @llvm.fmuladd.f64(double %328, double -2.500000e-01, double %296)
  store double %329, double* %arrayidx1129, align 8, !tbaa !7
  %330 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.1, double -4.000000e+00, double %p_um1.sroa.51.1)
  %331 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double 6.000000e+00, double %330)
  %332 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double -4.000000e+00, double %331)
  %333 = tail call double @llvm.fmuladd.f64(double %332, double -2.500000e-01, double %313)
  store double %333, double* %arrayidx1146, align 8, !tbaa !7
  %arrayidx1243 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %334 = load double, double* %arrayidx1243, align 8, !tbaa !7
  %arrayidx1250 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %335 = load double, double* %arrayidx1250, align 8, !tbaa !7
  %arrayidx1257 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %336 = load double, double* %arrayidx1257, align 8, !tbaa !7
  %arrayidx1264 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %337 = load double, double* %arrayidx1264, align 8, !tbaa !7
  %arrayidx1271 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %338 = load double, double* %arrayidx1271, align 8, !tbaa !7
  %arrayidx1278 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %339 = load double, double* %arrayidx1278, align 8, !tbaa !7
  %arrayidx1285 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 0
  %340 = load double, double* %arrayidx1285, align 8, !tbaa !7
  %341 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double -2.000000e+00, double %257)
  %add1289 = fadd double %p_up1.sroa.0.1, %341
  %342 = tail call double @llvm.fmuladd.f64(double %add1289, double 0x40D2FC3000000001, double %340)
  %sub1292 = fsub double %258, %p_up1.sroa.14.1
  %343 = tail call double @llvm.fmuladd.f64(double %sub1292, double -8.050000e+01, double %342)
  %arrayidx1300 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 1
  %344 = load double, double* %arrayidx1300, align 8, !tbaa !7
  %345 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double -2.000000e+00, double %258)
  %add1304 = fadd double %p_up1.sroa.14.1, %345
  %346 = tail call double @llvm.fmuladd.f64(double %add1304, double 0x40D2FC3000000001, double %344)
  %347 = tail call double @llvm.fmuladd.f64(double %262, double -2.000000e+00, double %334)
  %add1305 = fadd double %p_usp1.0.lcssa, %347
  %348 = tail call double @llvm.fmuladd.f64(double %add1305, double 0x40AB004444444445, double %346)
  %349 = fneg double %p_up1.sroa.14.1
  %neg1309 = fmul double %p_usp1.0.lcssa, %349
  %350 = tail call double @llvm.fmuladd.f64(double %258, double %334, double %neg1309)
  %sub1311 = fsub double %261, %339
  %sub1313 = fsub double %sub1311, %p_up1.sroa.50.1
  %add1314 = fadd double %p_squarep1.0.lcssa, %sub1313
  %351 = tail call double @llvm.fmuladd.f64(double %add1314, double 4.000000e-01, double %350)
  %352 = tail call double @llvm.fmuladd.f64(double %351, double -8.050000e+01, double %348)
  %arrayidx1322 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 2
  %353 = load double, double* %arrayidx1322, align 8, !tbaa !7
  %354 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double -2.000000e+00, double %259)
  %add1326 = fadd double %p_up1.sroa.26.1, %354
  %355 = tail call double @llvm.fmuladd.f64(double %add1326, double 0x40D2FC3000000001, double %353)
  %356 = tail call double @llvm.fmuladd.f64(double %263, double -2.000000e+00, double %335)
  %add1327 = fadd double %p_vsp1.0.lcssa, %356
  %357 = tail call double @llvm.fmuladd.f64(double %add1327, double 0x40A4403333333334, double %355)
  %358 = fneg double %p_up1.sroa.26.1
  %neg1331 = fmul double %p_usp1.0.lcssa, %358
  %359 = tail call double @llvm.fmuladd.f64(double %259, double %334, double %neg1331)
  %360 = tail call double @llvm.fmuladd.f64(double %359, double -8.050000e+01, double %357)
  %arrayidx1339 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 3
  %361 = load double, double* %arrayidx1339, align 8, !tbaa !7
  %362 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double -2.000000e+00, double %260)
  %add1343 = fadd double %p_up1.sroa.38.1, %362
  %363 = tail call double @llvm.fmuladd.f64(double %add1343, double 0x40D2FC3000000001, double %361)
  %364 = tail call double @llvm.fmuladd.f64(double %264, double -2.000000e+00, double %336)
  %add1344 = fadd double %p_wsp1.0.lcssa, %364
  %365 = tail call double @llvm.fmuladd.f64(double %add1344, double 0x40A4403333333334, double %363)
  %366 = fneg double %p_up1.sroa.38.1
  %neg1348 = fmul double %p_usp1.0.lcssa, %366
  %367 = tail call double @llvm.fmuladd.f64(double %260, double %334, double %neg1348)
  %368 = tail call double @llvm.fmuladd.f64(double %367, double -8.050000e+01, double %365)
  %arrayidx1356 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 4
  %369 = load double, double* %arrayidx1356, align 8, !tbaa !7
  %370 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double -2.000000e+00, double %261)
  %add1360 = fadd double %p_up1.sroa.50.1, %370
  %371 = tail call double @llvm.fmuladd.f64(double %add1360, double 0x40D2FC3000000001, double %369)
  %372 = tail call double @llvm.fmuladd.f64(double %265, double -2.000000e+00, double %337)
  %add1361 = fadd double %p_qsp1.0.lcssa, %372
  %373 = tail call double @llvm.fmuladd.f64(double %add1361, double 0xC0A370D4FDF3B645, double %371)
  %374 = fmul double %262, -2.000000e+00
  %neg1364 = fmul double %262, %374
  %375 = tail call double @llvm.fmuladd.f64(double %334, double %334, double %neg1364)
  %376 = tail call double @llvm.fmuladd.f64(double %p_usp1.0.lcssa, double %p_usp1.0.lcssa, double %375)
  %377 = tail call double @llvm.fmuladd.f64(double %376, double 0x407B004444444445, double %373)
  %378 = fmul double %p_up2.sroa.42.1, -2.000000e+00
  %neg1369 = fmul double %378, %266
  %379 = tail call double @llvm.fmuladd.f64(double %261, double %338, double %neg1369)
  %380 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double %p_rho_ip1.0.lcssa, double %379)
  %381 = tail call double @llvm.fmuladd.f64(double %380, double 0x40B3D884189374BC, double %377)
  %neg1373 = fmul double %339, -4.000000e-01
  %382 = tail call double @llvm.fmuladd.f64(double %261, double 1.400000e+00, double %neg1373)
  %383 = fneg double %.pre-phi2322
  %neg1379 = fmul double %p_usp1.0.lcssa, %383
  %384 = tail call double @llvm.fmuladd.f64(double %382, double %334, double %neg1379)
  %385 = tail call double @llvm.fmuladd.f64(double %384, double -8.050000e+01, double %381)
  %386 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double -4.000000e+00, double %p_u.sroa.0.1)
  %387 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double 5.000000e+00, double %386)
  %388 = tail call double @llvm.fmuladd.f64(double %387, double -2.500000e-01, double %343)
  store double %388, double* %arrayidx1285, align 8, !tbaa !7
  %389 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double -4.000000e+00, double %p_u.sroa.15.1)
  %390 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double 5.000000e+00, double %389)
  %391 = tail call double @llvm.fmuladd.f64(double %390, double -2.500000e-01, double %352)
  store double %391, double* %arrayidx1300, align 8, !tbaa !7
  %392 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double -4.000000e+00, double %p_u.sroa.28.1)
  %393 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double 5.000000e+00, double %392)
  %394 = tail call double @llvm.fmuladd.f64(double %393, double -2.500000e-01, double %360)
  store double %394, double* %arrayidx1322, align 8, !tbaa !7
  %395 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double -4.000000e+00, double %p_u.sroa.41.1)
  %396 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double 5.000000e+00, double %395)
  %397 = tail call double @llvm.fmuladd.f64(double %396, double -2.500000e-01, double %368)
  store double %397, double* %arrayidx1339, align 8, !tbaa !7
  %398 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double -4.000000e+00, double %p_u.sroa.54.1)
  %399 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double 5.000000e+00, double %398)
  %400 = tail call double @llvm.fmuladd.f64(double %399, double -2.500000e-01, double %385)
  store double %400, double* %arrayidx1356, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.end940, %entry
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @compute_rhs4(double* readonly %g_u, double* nocapture readonly %g_us, double* nocapture readonly %g_vs, double* nocapture readonly %g_ws, double* nocapture readonly %g_qs, double* nocapture readonly %g_rho_i, double* nocapture readonly %g_square, double* %g_rhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !15 !kernel_arg_access_qual !16 !kernel_arg_type !17 !kernel_arg_base_type !17 !kernel_arg_type_qual !18 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  %sub5 = add nsw i32 %gp0, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast double* %g_us to [163 x [163 x double]]*
  %3 = bitcast double* %g_vs to [163 x [163 x double]]*
  %4 = bitcast double* %g_ws to [163 x [163 x double]]*
  %5 = bitcast double* %g_qs to [163 x [163 x double]]*
  %6 = bitcast double* %g_rho_i to [163 x [163 x double]]*
  %7 = bitcast double* %g_square to [163 x [163 x double]]*
  %8 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %9 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom9 = sext i32 %conv3 to i64
  %arrayidx11 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 0, i64 %idxprom9, i64 0
  %10 = load double, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx18 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 0, i64 %idxprom9, i64 1
  %11 = load double, double* %arrayidx18, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 0, i64 %idxprom9, i64 2
  %12 = load double, double* %arrayidx25, align 8, !tbaa !7
  %arrayidx32 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 0, i64 %idxprom9, i64 3
  %13 = load double, double* %arrayidx32, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 0, i64 %idxprom9, i64 4
  %14 = load double, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx46 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 1, i64 %idxprom9, i64 0
  %15 = load double, double* %arrayidx46, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 1, i64 %idxprom9, i64 1
  %16 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 1, i64 %idxprom9, i64 2
  %17 = load double, double* %arrayidx60, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 1, i64 %idxprom9, i64 3
  %18 = load double, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 1, i64 %idxprom9, i64 4
  %19 = load double, double* %arrayidx74, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 2, i64 %idxprom9, i64 0
  %20 = load double, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx88 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 2, i64 %idxprom9, i64 1
  %21 = load double, double* %arrayidx88, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 2, i64 %idxprom9, i64 2
  %22 = load double, double* %arrayidx95, align 8, !tbaa !7
  %arrayidx102 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 2, i64 %idxprom9, i64 3
  %23 = load double, double* %arrayidx102, align 8, !tbaa !7
  %arrayidx109 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 2, i64 %idxprom9, i64 4
  %24 = load double, double* %arrayidx109, align 8, !tbaa !7
  %arrayidx115 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 0, i64 %idxprom9
  %25 = load double, double* %arrayidx115, align 8, !tbaa !7
  %arrayidx120 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 1, i64 %idxprom9
  %26 = load double, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx125 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 0, i64 %idxprom9
  %27 = load double, double* %arrayidx125, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 1, i64 %idxprom9
  %28 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 0, i64 %idxprom9
  %29 = load double, double* %arrayidx135, align 8, !tbaa !7
  %arrayidx140 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 1, i64 %idxprom9
  %30 = load double, double* %arrayidx140, align 8, !tbaa !7
  %arrayidx145 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 0, i64 %idxprom9
  %31 = load double, double* %arrayidx145, align 8, !tbaa !7
  %arrayidx150 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 1, i64 %idxprom9
  %32 = load double, double* %arrayidx150, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 0, i64 %idxprom9
  %33 = load double, double* %arrayidx155, align 8, !tbaa !7
  %arrayidx160 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 1, i64 %idxprom9
  %34 = load double, double* %arrayidx160, align 8, !tbaa !7
  %arrayidx165 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 0, i64 %idxprom9
  %35 = load double, double* %arrayidx165, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 1, i64 %idxprom9
  %36 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx218 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 3, i64 %idxprom9, i64 0
  %37 = load double, double* %arrayidx218, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 3, i64 %idxprom9, i64 1
  %38 = load double, double* %arrayidx227, align 8, !tbaa !7
  %arrayidx236 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 3, i64 %idxprom9, i64 2
  %39 = load double, double* %arrayidx236, align 8, !tbaa !7
  %arrayidx245 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 3, i64 %idxprom9, i64 3
  %40 = load double, double* %arrayidx245, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 3, i64 %idxprom9, i64 4
  %41 = load double, double* %arrayidx254, align 8, !tbaa !7
  %arrayidx262 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 2, i64 %idxprom9
  %42 = load double, double* %arrayidx262, align 8, !tbaa !7
  %arrayidx269 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 2, i64 %idxprom9
  %43 = load double, double* %arrayidx269, align 8, !tbaa !7
  %arrayidx276 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 2, i64 %idxprom9
  %44 = load double, double* %arrayidx276, align 8, !tbaa !7
  %arrayidx283 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 2, i64 %idxprom9
  %45 = load double, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx290 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 2, i64 %idxprom9
  %46 = load double, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx297 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 2, i64 %idxprom9
  %47 = load double, double* %arrayidx297, align 8, !tbaa !7
  %arrayidx304 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 1, i64 %idxprom9, i64 0
  %48 = load double, double* %arrayidx304, align 8, !tbaa !7
  %49 = tail call double @llvm.fmuladd.f64(double %15, double -2.000000e+00, double %20)
  %add308 = fadd double %10, %49
  %50 = tail call double @llvm.fmuladd.f64(double %add308, double 0x40D2FC3000000001, double %48)
  %sub311 = fsub double %22, %12
  %51 = tail call double @llvm.fmuladd.f64(double %sub311, double -8.050000e+01, double %50)
  %arrayidx319 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 1, i64 %idxprom9, i64 1
  %52 = load double, double* %arrayidx319, align 8, !tbaa !7
  %53 = tail call double @llvm.fmuladd.f64(double %16, double -2.000000e+00, double %21)
  %add323 = fadd double %11, %53
  %54 = tail call double @llvm.fmuladd.f64(double %add323, double 0x40D2FC3000000001, double %52)
  %55 = tail call double @llvm.fmuladd.f64(double %26, double -2.000000e+00, double %42)
  %add324 = fadd double %25, %55
  %56 = tail call double @llvm.fmuladd.f64(double %add324, double 0x40A4403333333334, double %54)
  %57 = fneg double %11
  %neg = fmul double %27, %57
  %58 = tail call double @llvm.fmuladd.f64(double %21, double %43, double %neg)
  %59 = tail call double @llvm.fmuladd.f64(double %58, double -8.050000e+01, double %56)
  %arrayidx335 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 1, i64 %idxprom9, i64 2
  %60 = load double, double* %arrayidx335, align 8, !tbaa !7
  %61 = tail call double @llvm.fmuladd.f64(double %17, double -2.000000e+00, double %22)
  %add339 = fadd double %12, %61
  %62 = tail call double @llvm.fmuladd.f64(double %add339, double 0x40D2FC3000000001, double %60)
  %63 = tail call double @llvm.fmuladd.f64(double %28, double -2.000000e+00, double %43)
  %add340 = fadd double %27, %63
  %64 = tail call double @llvm.fmuladd.f64(double %add340, double 0x40AB004444444445, double %62)
  %65 = fneg double %12
  %neg344 = fmul double %27, %65
  %66 = tail call double @llvm.fmuladd.f64(double %22, double %43, double %neg344)
  %sub346 = fsub double %24, %47
  %sub348 = fsub double %sub346, %14
  %add349 = fadd double %35, %sub348
  %67 = tail call double @llvm.fmuladd.f64(double %add349, double 4.000000e-01, double %66)
  %68 = tail call double @llvm.fmuladd.f64(double %67, double -8.050000e+01, double %64)
  %arrayidx357 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 1, i64 %idxprom9, i64 3
  %69 = load double, double* %arrayidx357, align 8, !tbaa !7
  %70 = tail call double @llvm.fmuladd.f64(double %18, double -2.000000e+00, double %23)
  %add361 = fadd double %13, %70
  %71 = tail call double @llvm.fmuladd.f64(double %add361, double 0x40D2FC3000000001, double %69)
  %72 = tail call double @llvm.fmuladd.f64(double %30, double -2.000000e+00, double %44)
  %add362 = fadd double %29, %72
  %73 = tail call double @llvm.fmuladd.f64(double %add362, double 0x40A4403333333334, double %71)
  %74 = fneg double %13
  %neg366 = fmul double %27, %74
  %75 = tail call double @llvm.fmuladd.f64(double %23, double %43, double %neg366)
  %76 = tail call double @llvm.fmuladd.f64(double %75, double -8.050000e+01, double %73)
  %arrayidx374 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 1, i64 %idxprom9, i64 4
  %77 = load double, double* %arrayidx374, align 8, !tbaa !7
  %78 = tail call double @llvm.fmuladd.f64(double %19, double -2.000000e+00, double %24)
  %add378 = fadd double %14, %78
  %79 = tail call double @llvm.fmuladd.f64(double %add378, double 0x40D2FC3000000001, double %77)
  %80 = tail call double @llvm.fmuladd.f64(double %32, double -2.000000e+00, double %45)
  %add379 = fadd double %31, %80
  %81 = tail call double @llvm.fmuladd.f64(double %add379, double 0xC0A370D4FDF3B645, double %79)
  %82 = fmul double %28, -2.000000e+00
  %neg382 = fmul double %28, %82
  %83 = tail call double @llvm.fmuladd.f64(double %43, double %43, double %neg382)
  %84 = tail call double @llvm.fmuladd.f64(double %27, double %27, double %83)
  %85 = tail call double @llvm.fmuladd.f64(double %84, double 0x407B004444444445, double %81)
  %86 = fmul double %19, -2.000000e+00
  %neg387 = fmul double %86, %34
  %87 = tail call double @llvm.fmuladd.f64(double %24, double %46, double %neg387)
  %88 = tail call double @llvm.fmuladd.f64(double %14, double %33, double %87)
  %89 = tail call double @llvm.fmuladd.f64(double %88, double 0x40B3D884189374BC, double %85)
  %neg391 = fmul double %47, -4.000000e-01
  %90 = tail call double @llvm.fmuladd.f64(double %24, double 1.400000e+00, double %neg391)
  %neg395 = fmul double %35, -4.000000e-01
  %91 = tail call double @llvm.fmuladd.f64(double %14, double 1.400000e+00, double %neg395)
  %92 = fneg double %91
  %neg397 = fmul double %27, %92
  %93 = tail call double @llvm.fmuladd.f64(double %90, double %43, double %neg397)
  %94 = tail call double @llvm.fmuladd.f64(double %93, double -8.050000e+01, double %89)
  %neg408 = fmul double %20, -4.000000e+00
  %95 = tail call double @llvm.fmuladd.f64(double %15, double 5.000000e+00, double %neg408)
  %add411 = fadd double %37, %95
  %96 = tail call double @llvm.fmuladd.f64(double %add411, double -2.500000e-01, double %51)
  store double %96, double* %arrayidx304, align 8, !tbaa !7
  %neg408.1 = fmul double %21, -4.000000e+00
  %97 = tail call double @llvm.fmuladd.f64(double %16, double 5.000000e+00, double %neg408.1)
  %add411.1 = fadd double %38, %97
  %98 = tail call double @llvm.fmuladd.f64(double %add411.1, double -2.500000e-01, double %59)
  store double %98, double* %arrayidx319, align 8, !tbaa !7
  %neg408.2 = fmul double %22, -4.000000e+00
  %99 = tail call double @llvm.fmuladd.f64(double %17, double 5.000000e+00, double %neg408.2)
  %add411.2 = fadd double %39, %99
  %100 = tail call double @llvm.fmuladd.f64(double %add411.2, double -2.500000e-01, double %68)
  store double %100, double* %arrayidx335, align 8, !tbaa !7
  %neg408.3 = fmul double %23, -4.000000e+00
  %101 = tail call double @llvm.fmuladd.f64(double %18, double 5.000000e+00, double %neg408.3)
  %add411.3 = fadd double %40, %101
  %102 = tail call double @llvm.fmuladd.f64(double %add411.3, double -2.500000e-01, double %76)
  store double %102, double* %arrayidx357, align 8, !tbaa !7
  %neg408.4 = fmul double %24, -4.000000e+00
  %103 = tail call double @llvm.fmuladd.f64(double %19, double 5.000000e+00, double %neg408.4)
  %add411.4 = fadd double %41, %103
  %104 = tail call double @llvm.fmuladd.f64(double %add411.4, double -2.500000e-01, double %94)
  store double %104, double* %arrayidx374, align 8, !tbaa !7
  %arrayidx467 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 4, i64 %idxprom9, i64 0
  %105 = load double, double* %arrayidx467, align 8, !tbaa !7
  %arrayidx476 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 4, i64 %idxprom9, i64 1
  %106 = load double, double* %arrayidx476, align 8, !tbaa !7
  %arrayidx485 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 4, i64 %idxprom9, i64 2
  %107 = load double, double* %arrayidx485, align 8, !tbaa !7
  %arrayidx494 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 4, i64 %idxprom9, i64 3
  %108 = load double, double* %arrayidx494, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 4, i64 %idxprom9, i64 4
  %109 = load double, double* %arrayidx503, align 8, !tbaa !7
  %arrayidx511 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 3, i64 %idxprom9
  %110 = load double, double* %arrayidx511, align 8, !tbaa !7
  %arrayidx518 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 3, i64 %idxprom9
  %111 = load double, double* %arrayidx518, align 8, !tbaa !7
  %arrayidx525 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 3, i64 %idxprom9
  %112 = load double, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx532 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 3, i64 %idxprom9
  %113 = load double, double* %arrayidx532, align 8, !tbaa !7
  %arrayidx539 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 3, i64 %idxprom9
  %114 = load double, double* %arrayidx539, align 8, !tbaa !7
  %arrayidx546 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 3, i64 %idxprom9
  %115 = load double, double* %arrayidx546, align 8, !tbaa !7
  %arrayidx553 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 2, i64 %idxprom9, i64 0
  %116 = load double, double* %arrayidx553, align 8, !tbaa !7
  %117 = tail call double @llvm.fmuladd.f64(double %20, double -2.000000e+00, double %37)
  %add557 = fadd double %15, %117
  %118 = tail call double @llvm.fmuladd.f64(double %add557, double 0x40D2FC3000000001, double %116)
  %sub560 = fsub double %39, %17
  %119 = tail call double @llvm.fmuladd.f64(double %sub560, double -8.050000e+01, double %118)
  %arrayidx568 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 2, i64 %idxprom9, i64 1
  %120 = load double, double* %arrayidx568, align 8, !tbaa !7
  %121 = tail call double @llvm.fmuladd.f64(double %21, double -2.000000e+00, double %38)
  %add572 = fadd double %16, %121
  %122 = tail call double @llvm.fmuladd.f64(double %add572, double 0x40D2FC3000000001, double %120)
  %123 = tail call double @llvm.fmuladd.f64(double %42, double -2.000000e+00, double %110)
  %add573 = fadd double %26, %123
  %124 = tail call double @llvm.fmuladd.f64(double %add573, double 0x40A4403333333334, double %122)
  %125 = fneg double %16
  %neg577 = fmul double %28, %125
  %126 = tail call double @llvm.fmuladd.f64(double %38, double %111, double %neg577)
  %127 = tail call double @llvm.fmuladd.f64(double %126, double -8.050000e+01, double %124)
  %arrayidx585 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 2, i64 %idxprom9, i64 2
  %128 = load double, double* %arrayidx585, align 8, !tbaa !7
  %129 = tail call double @llvm.fmuladd.f64(double %22, double -2.000000e+00, double %39)
  %add589 = fadd double %17, %129
  %130 = tail call double @llvm.fmuladd.f64(double %add589, double 0x40D2FC3000000001, double %128)
  %131 = tail call double @llvm.fmuladd.f64(double %43, double -2.000000e+00, double %111)
  %add590 = fadd double %28, %131
  %132 = tail call double @llvm.fmuladd.f64(double %add590, double 0x40AB004444444445, double %130)
  %133 = fneg double %17
  %neg594 = fmul double %28, %133
  %134 = tail call double @llvm.fmuladd.f64(double %39, double %111, double %neg594)
  %sub596 = fsub double %41, %115
  %sub598 = fsub double %sub596, %19
  %add599 = fadd double %36, %sub598
  %135 = tail call double @llvm.fmuladd.f64(double %add599, double 4.000000e-01, double %134)
  %136 = tail call double @llvm.fmuladd.f64(double %135, double -8.050000e+01, double %132)
  %arrayidx607 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 2, i64 %idxprom9, i64 3
  %137 = load double, double* %arrayidx607, align 8, !tbaa !7
  %138 = tail call double @llvm.fmuladd.f64(double %23, double -2.000000e+00, double %40)
  %add611 = fadd double %18, %138
  %139 = tail call double @llvm.fmuladd.f64(double %add611, double 0x40D2FC3000000001, double %137)
  %140 = tail call double @llvm.fmuladd.f64(double %44, double -2.000000e+00, double %112)
  %add612 = fadd double %30, %140
  %141 = tail call double @llvm.fmuladd.f64(double %add612, double 0x40A4403333333334, double %139)
  %142 = fneg double %18
  %neg616 = fmul double %28, %142
  %143 = tail call double @llvm.fmuladd.f64(double %40, double %111, double %neg616)
  %144 = tail call double @llvm.fmuladd.f64(double %143, double -8.050000e+01, double %141)
  %arrayidx624 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 2, i64 %idxprom9, i64 4
  %145 = load double, double* %arrayidx624, align 8, !tbaa !7
  %146 = tail call double @llvm.fmuladd.f64(double %24, double -2.000000e+00, double %41)
  %add628 = fadd double %19, %146
  %147 = tail call double @llvm.fmuladd.f64(double %add628, double 0x40D2FC3000000001, double %145)
  %148 = tail call double @llvm.fmuladd.f64(double %45, double -2.000000e+00, double %113)
  %add629 = fadd double %32, %148
  %149 = tail call double @llvm.fmuladd.f64(double %add629, double 0xC0A370D4FDF3B645, double %147)
  %150 = fmul double %43, -2.000000e+00
  %neg632 = fmul double %43, %150
  %151 = tail call double @llvm.fmuladd.f64(double %111, double %111, double %neg632)
  %152 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %151)
  %153 = tail call double @llvm.fmuladd.f64(double %152, double 0x407B004444444445, double %149)
  %154 = fmul double %24, -2.000000e+00
  %neg637 = fmul double %154, %46
  %155 = tail call double @llvm.fmuladd.f64(double %41, double %114, double %neg637)
  %156 = tail call double @llvm.fmuladd.f64(double %19, double %34, double %155)
  %157 = tail call double @llvm.fmuladd.f64(double %156, double 0x40B3D884189374BC, double %153)
  %neg641 = fmul double %115, -4.000000e-01
  %158 = tail call double @llvm.fmuladd.f64(double %41, double 1.400000e+00, double %neg641)
  %neg645 = fmul double %36, -4.000000e-01
  %159 = tail call double @llvm.fmuladd.f64(double %19, double 1.400000e+00, double %neg645)
  %160 = fneg double %159
  %neg647 = fmul double %28, %160
  %161 = tail call double @llvm.fmuladd.f64(double %158, double %111, double %neg647)
  %162 = tail call double @llvm.fmuladd.f64(double %161, double -8.050000e+01, double %157)
  %mul659 = fmul double %20, 6.000000e+00
  %163 = tail call double @llvm.fmuladd.f64(double %15, double -4.000000e+00, double %mul659)
  %164 = tail call double @llvm.fmuladd.f64(double %37, double -4.000000e+00, double %163)
  %add664 = fadd double %105, %164
  %165 = tail call double @llvm.fmuladd.f64(double %add664, double -2.500000e-01, double %119)
  store double %165, double* %arrayidx553, align 8, !tbaa !7
  %mul659.1 = fmul double %21, 6.000000e+00
  %166 = tail call double @llvm.fmuladd.f64(double %16, double -4.000000e+00, double %mul659.1)
  %167 = tail call double @llvm.fmuladd.f64(double %38, double -4.000000e+00, double %166)
  %add664.1 = fadd double %106, %167
  %168 = tail call double @llvm.fmuladd.f64(double %add664.1, double -2.500000e-01, double %127)
  store double %168, double* %arrayidx568, align 8, !tbaa !7
  %mul659.2 = fmul double %22, 6.000000e+00
  %169 = tail call double @llvm.fmuladd.f64(double %17, double -4.000000e+00, double %mul659.2)
  %170 = tail call double @llvm.fmuladd.f64(double %39, double -4.000000e+00, double %169)
  %add664.2 = fadd double %107, %170
  %171 = tail call double @llvm.fmuladd.f64(double %add664.2, double -2.500000e-01, double %136)
  store double %171, double* %arrayidx585, align 8, !tbaa !7
  %mul659.3 = fmul double %23, 6.000000e+00
  %172 = tail call double @llvm.fmuladd.f64(double %18, double -4.000000e+00, double %mul659.3)
  %173 = tail call double @llvm.fmuladd.f64(double %40, double -4.000000e+00, double %172)
  %add664.3 = fadd double %108, %173
  %174 = tail call double @llvm.fmuladd.f64(double %add664.3, double -2.500000e-01, double %144)
  store double %174, double* %arrayidx607, align 8, !tbaa !7
  %mul659.4 = fmul double %24, 6.000000e+00
  %175 = tail call double @llvm.fmuladd.f64(double %19, double -4.000000e+00, double %mul659.4)
  %176 = tail call double @llvm.fmuladd.f64(double %41, double -4.000000e+00, double %175)
  %add664.4 = fadd double %109, %176
  %177 = tail call double @llvm.fmuladd.f64(double %add664.4, double -2.500000e-01, double %162)
  store double %177, double* %arrayidx624, align 8, !tbaa !7
  %cmp678.not2105 = icmp slt i32 %gp1, 7
  %.pre2323 = add nsw i32 %gp1, -3
  br i1 %cmp678.not2105, label %for.end940, label %for.body680.preheader

for.body680.preheader:                            ; preds = %if.end
  %wide.trip.count = zext i32 %.pre2323 to i64
  br label %for.body680

for.body680:                                      ; preds = %for.body680.preheader, %for.body680
  %p_u.sroa.54.0 = phi double [ %24, %for.body680.preheader ], [ %p_up1.sroa.50.0, %for.body680 ]
  %p_u.sroa.41.0 = phi double [ %23, %for.body680.preheader ], [ %p_up1.sroa.38.0, %for.body680 ]
  %p_u.sroa.28.0 = phi double [ %22, %for.body680.preheader ], [ %p_up1.sroa.26.0, %for.body680 ]
  %p_u.sroa.15.0 = phi double [ %21, %for.body680.preheader ], [ %p_up1.sroa.14.0, %for.body680 ]
  %p_u.sroa.0.0 = phi double [ %20, %for.body680.preheader ], [ %p_up1.sroa.0.0, %for.body680 ]
  %p_up1.sroa.50.0 = phi double [ %41, %for.body680.preheader ], [ %p_up2.sroa.42.0, %for.body680 ]
  %p_up1.sroa.38.0 = phi double [ %40, %for.body680.preheader ], [ %p_up2.sroa.32.0, %for.body680 ]
  %p_up1.sroa.26.0 = phi double [ %39, %for.body680.preheader ], [ %p_up2.sroa.22.0, %for.body680 ]
  %p_up1.sroa.14.0 = phi double [ %38, %for.body680.preheader ], [ %p_up2.sroa.12.0, %for.body680 ]
  %p_up1.sroa.0.0 = phi double [ %37, %for.body680.preheader ], [ %p_up2.sroa.0.0, %for.body680 ]
  %p_up2.sroa.42.0 = phi double [ %109, %for.body680.preheader ], [ %183, %for.body680 ]
  %p_up2.sroa.32.0 = phi double [ %108, %for.body680.preheader ], [ %182, %for.body680 ]
  %p_up2.sroa.22.0 = phi double [ %107, %for.body680.preheader ], [ %181, %for.body680 ]
  %p_up2.sroa.12.0 = phi double [ %106, %for.body680.preheader ], [ %180, %for.body680 ]
  %p_up2.sroa.0.0 = phi double [ %105, %for.body680.preheader ], [ %179, %for.body680 ]
  %p_um1.sroa.0.0 = phi double [ %15, %for.body680.preheader ], [ %p_u.sroa.0.0, %for.body680 ]
  %p_um1.sroa.15.0 = phi double [ %16, %for.body680.preheader ], [ %p_u.sroa.15.0, %for.body680 ]
  %p_um1.sroa.27.0 = phi double [ %17, %for.body680.preheader ], [ %p_u.sroa.28.0, %for.body680 ]
  %p_um1.sroa.39.0 = phi double [ %18, %for.body680.preheader ], [ %p_u.sroa.41.0, %for.body680 ]
  %p_um1.sroa.51.0 = phi double [ %19, %for.body680.preheader ], [ %p_u.sroa.54.0, %for.body680 ]
  %indvars.iv = phi i64 [ 3, %for.body680.preheader ], [ %indvars.iv.next, %for.body680 ]
  %p_us.02117 = phi double [ %42, %for.body680.preheader ], [ %p_usp1.02116, %for.body680 ]
  %p_usp1.02116 = phi double [ %110, %for.body680.preheader ], [ %184, %for.body680 ]
  %p_vs.02115 = phi double [ %43, %for.body680.preheader ], [ %p_vsp1.02114, %for.body680 ]
  %p_vsp1.02114 = phi double [ %111, %for.body680.preheader ], [ %185, %for.body680 ]
  %p_squarep1.02113 = phi double [ %115, %for.body680.preheader ], [ %189, %for.body680 ]
  %p_square.02112 = phi double [ %47, %for.body680.preheader ], [ %p_squarep1.02113, %for.body680 ]
  %p_rho_ip1.02111 = phi double [ %114, %for.body680.preheader ], [ %188, %for.body680 ]
  %p_rho_i.02110 = phi double [ %46, %for.body680.preheader ], [ %p_rho_ip1.02111, %for.body680 ]
  %p_qsp1.02109 = phi double [ %113, %for.body680.preheader ], [ %187, %for.body680 ]
  %p_qs.02108 = phi double [ %45, %for.body680.preheader ], [ %p_qsp1.02109, %for.body680 ]
  %p_wsp1.02107 = phi double [ %112, %for.body680.preheader ], [ %186, %for.body680 ]
  %p_ws.02106 = phi double [ %44, %for.body680.preheader ], [ %p_wsp1.02107, %for.body680 ]
  %178 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx728 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %178, i64 %idxprom9, i64 0
  %179 = load double, double* %arrayidx728, align 8, !tbaa !7
  %arrayidx737 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %178, i64 %idxprom9, i64 1
  %180 = load double, double* %arrayidx737, align 8, !tbaa !7
  %arrayidx746 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %178, i64 %idxprom9, i64 2
  %181 = load double, double* %arrayidx746, align 8, !tbaa !7
  %arrayidx755 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %178, i64 %idxprom9, i64 3
  %182 = load double, double* %arrayidx755, align 8, !tbaa !7
  %arrayidx764 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %178, i64 %idxprom9, i64 4
  %183 = load double, double* %arrayidx764, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx772 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %184 = load double, double* %arrayidx772, align 8, !tbaa !7
  %arrayidx779 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %185 = load double, double* %arrayidx779, align 8, !tbaa !7
  %arrayidx786 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %186 = load double, double* %arrayidx786, align 8, !tbaa !7
  %arrayidx793 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %187 = load double, double* %arrayidx793, align 8, !tbaa !7
  %arrayidx800 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %188 = load double, double* %arrayidx800, align 8, !tbaa !7
  %arrayidx807 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %189 = load double, double* %arrayidx807, align 8, !tbaa !7
  %arrayidx814 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 0
  %190 = load double, double* %arrayidx814, align 8, !tbaa !7
  %191 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.0, double -2.000000e+00, double %p_up2.sroa.0.0)
  %add818 = fadd double %p_u.sroa.0.0, %191
  %192 = tail call double @llvm.fmuladd.f64(double %add818, double 0x40D2FC3000000001, double %190)
  %sub821 = fsub double %p_up2.sroa.22.0, %p_u.sroa.28.0
  %193 = tail call double @llvm.fmuladd.f64(double %sub821, double -8.050000e+01, double %192)
  %arrayidx829 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 1
  %194 = load double, double* %arrayidx829, align 8, !tbaa !7
  %195 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.0, double -2.000000e+00, double %p_up2.sroa.12.0)
  %add833 = fadd double %p_u.sroa.15.0, %195
  %196 = tail call double @llvm.fmuladd.f64(double %add833, double 0x40D2FC3000000001, double %194)
  %197 = tail call double @llvm.fmuladd.f64(double %p_usp1.02116, double -2.000000e+00, double %184)
  %add834 = fadd double %p_us.02117, %197
  %198 = tail call double @llvm.fmuladd.f64(double %add834, double 0x40A4403333333334, double %196)
  %199 = fneg double %p_u.sroa.15.0
  %neg838 = fmul double %p_vs.02115, %199
  %200 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.0, double %185, double %neg838)
  %201 = tail call double @llvm.fmuladd.f64(double %200, double -8.050000e+01, double %198)
  %arrayidx846 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 2
  %202 = load double, double* %arrayidx846, align 8, !tbaa !7
  %203 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.0, double -2.000000e+00, double %p_up2.sroa.22.0)
  %add850 = fadd double %p_u.sroa.28.0, %203
  %204 = tail call double @llvm.fmuladd.f64(double %add850, double 0x40D2FC3000000001, double %202)
  %205 = tail call double @llvm.fmuladd.f64(double %p_vsp1.02114, double -2.000000e+00, double %185)
  %add851 = fadd double %p_vs.02115, %205
  %206 = tail call double @llvm.fmuladd.f64(double %add851, double 0x40AB004444444445, double %204)
  %207 = fneg double %p_u.sroa.28.0
  %neg855 = fmul double %p_vs.02115, %207
  %208 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.0, double %185, double %neg855)
  %sub857 = fsub double %p_up2.sroa.42.0, %189
  %sub859 = fsub double %sub857, %p_u.sroa.54.0
  %add860 = fadd double %p_square.02112, %sub859
  %209 = tail call double @llvm.fmuladd.f64(double %add860, double 4.000000e-01, double %208)
  %210 = tail call double @llvm.fmuladd.f64(double %209, double -8.050000e+01, double %206)
  %arrayidx868 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 3
  %211 = load double, double* %arrayidx868, align 8, !tbaa !7
  %212 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.0, double -2.000000e+00, double %p_up2.sroa.32.0)
  %add872 = fadd double %p_u.sroa.41.0, %212
  %213 = tail call double @llvm.fmuladd.f64(double %add872, double 0x40D2FC3000000001, double %211)
  %214 = tail call double @llvm.fmuladd.f64(double %p_wsp1.02107, double -2.000000e+00, double %186)
  %add873 = fadd double %p_ws.02106, %214
  %215 = tail call double @llvm.fmuladd.f64(double %add873, double 0x40A4403333333334, double %213)
  %216 = fneg double %p_u.sroa.41.0
  %neg877 = fmul double %p_vs.02115, %216
  %217 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.0, double %185, double %neg877)
  %218 = tail call double @llvm.fmuladd.f64(double %217, double -8.050000e+01, double %215)
  %arrayidx885 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 4
  %219 = load double, double* %arrayidx885, align 8, !tbaa !7
  %220 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double -2.000000e+00, double %p_up2.sroa.42.0)
  %add889 = fadd double %p_u.sroa.54.0, %220
  %221 = tail call double @llvm.fmuladd.f64(double %add889, double 0x40D2FC3000000001, double %219)
  %222 = tail call double @llvm.fmuladd.f64(double %p_qsp1.02109, double -2.000000e+00, double %187)
  %add890 = fadd double %p_qs.02108, %222
  %223 = tail call double @llvm.fmuladd.f64(double %add890, double 0xC0A370D4FDF3B645, double %221)
  %224 = fmul double %p_vsp1.02114, -2.000000e+00
  %neg893 = fmul double %p_vsp1.02114, %224
  %225 = tail call double @llvm.fmuladd.f64(double %185, double %185, double %neg893)
  %226 = tail call double @llvm.fmuladd.f64(double %p_vs.02115, double %p_vs.02115, double %225)
  %227 = tail call double @llvm.fmuladd.f64(double %226, double 0x407B004444444445, double %223)
  %228 = fmul double %p_up1.sroa.50.0, -2.000000e+00
  %neg898 = fmul double %p_rho_ip1.02111, %228
  %229 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double %188, double %neg898)
  %230 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double %p_rho_i.02110, double %229)
  %231 = tail call double @llvm.fmuladd.f64(double %230, double 0x40B3D884189374BC, double %227)
  %neg902 = fmul double %189, -4.000000e-01
  %232 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double 1.400000e+00, double %neg902)
  %neg906 = fmul double %p_square.02112, -4.000000e-01
  %233 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double 1.400000e+00, double %neg906)
  %234 = fneg double %233
  %neg908 = fmul double %p_vs.02115, %234
  %235 = tail call double @llvm.fmuladd.f64(double %232, double %185, double %neg908)
  %236 = tail call double @llvm.fmuladd.f64(double %235, double -8.050000e+01, double %231)
  %237 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.0.0, double -4.000000e+00, double %p_um1.sroa.0.0)
  %238 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.0, double 6.000000e+00, double %237)
  %239 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.0, double -4.000000e+00, double %238)
  %add926 = fadd double %239, %179
  %240 = tail call double @llvm.fmuladd.f64(double %add926, double -2.500000e-01, double %193)
  store double %240, double* %arrayidx814, align 8, !tbaa !7
  %241 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.15.0, double -4.000000e+00, double %p_um1.sroa.15.0)
  %242 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.0, double 6.000000e+00, double %241)
  %243 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.0, double -4.000000e+00, double %242)
  %add926.1 = fadd double %243, %180
  %244 = tail call double @llvm.fmuladd.f64(double %add926.1, double -2.500000e-01, double %201)
  store double %244, double* %arrayidx829, align 8, !tbaa !7
  %245 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.28.0, double -4.000000e+00, double %p_um1.sroa.27.0)
  %246 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.0, double 6.000000e+00, double %245)
  %247 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.0, double -4.000000e+00, double %246)
  %add926.2 = fadd double %247, %181
  %248 = tail call double @llvm.fmuladd.f64(double %add926.2, double -2.500000e-01, double %210)
  store double %248, double* %arrayidx846, align 8, !tbaa !7
  %249 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.41.0, double -4.000000e+00, double %p_um1.sroa.39.0)
  %250 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.0, double 6.000000e+00, double %249)
  %251 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.0, double -4.000000e+00, double %250)
  %add926.3 = fadd double %251, %182
  %252 = tail call double @llvm.fmuladd.f64(double %add926.3, double -2.500000e-01, double %218)
  store double %252, double* %arrayidx868, align 8, !tbaa !7
  %253 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double -4.000000e+00, double %p_um1.sroa.51.0)
  %254 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double 6.000000e+00, double %253)
  %255 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double -4.000000e+00, double %254)
  %add926.4 = fadd double %255, %183
  %256 = tail call double @llvm.fmuladd.f64(double %add926.4, double -2.500000e-01, double %236)
  store double %256, double* %arrayidx885, align 8, !tbaa !7
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end940.loopexit, label %for.body680

for.end940.loopexit:                              ; preds = %for.body680
  %.pre = fmul double %p_squarep1.02113, -4.000000e-01
  %.pre2321 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double 1.400000e+00, double %.pre)
  br label %for.end940

for.end940:                                       ; preds = %if.end, %for.end940.loopexit
  %.pre-phi2322 = phi double [ %232, %for.end940.loopexit ], [ %158, %if.end ]
  %.pre-phi = phi double [ %.pre2321, %for.end940.loopexit ], [ %90, %if.end ]
  %p_u.sroa.54.1 = phi double [ %p_up1.sroa.50.0, %for.end940.loopexit ], [ %24, %if.end ]
  %p_u.sroa.41.1 = phi double [ %p_up1.sroa.38.0, %for.end940.loopexit ], [ %23, %if.end ]
  %p_u.sroa.28.1 = phi double [ %p_up1.sroa.26.0, %for.end940.loopexit ], [ %22, %if.end ]
  %p_u.sroa.15.1 = phi double [ %p_up1.sroa.14.0, %for.end940.loopexit ], [ %21, %if.end ]
  %p_u.sroa.0.1 = phi double [ %p_up1.sroa.0.0, %for.end940.loopexit ], [ %20, %if.end ]
  %p_up1.sroa.50.1 = phi double [ %p_up2.sroa.42.0, %for.end940.loopexit ], [ %41, %if.end ]
  %p_up1.sroa.38.1 = phi double [ %p_up2.sroa.32.0, %for.end940.loopexit ], [ %40, %if.end ]
  %p_up1.sroa.26.1 = phi double [ %p_up2.sroa.22.0, %for.end940.loopexit ], [ %39, %if.end ]
  %p_up1.sroa.14.1 = phi double [ %p_up2.sroa.12.0, %for.end940.loopexit ], [ %38, %if.end ]
  %p_up1.sroa.0.1 = phi double [ %p_up2.sroa.0.0, %for.end940.loopexit ], [ %37, %if.end ]
  %p_up2.sroa.42.1 = phi double [ %183, %for.end940.loopexit ], [ %109, %if.end ]
  %p_up2.sroa.32.1 = phi double [ %182, %for.end940.loopexit ], [ %108, %if.end ]
  %p_up2.sroa.22.1 = phi double [ %181, %for.end940.loopexit ], [ %107, %if.end ]
  %p_up2.sroa.12.1 = phi double [ %180, %for.end940.loopexit ], [ %106, %if.end ]
  %p_up2.sroa.0.1 = phi double [ %179, %for.end940.loopexit ], [ %105, %if.end ]
  %p_um1.sroa.0.1 = phi double [ %p_u.sroa.0.0, %for.end940.loopexit ], [ %15, %if.end ]
  %p_um1.sroa.15.1 = phi double [ %p_u.sroa.15.0, %for.end940.loopexit ], [ %16, %if.end ]
  %p_um1.sroa.27.1 = phi double [ %p_u.sroa.28.0, %for.end940.loopexit ], [ %17, %if.end ]
  %p_um1.sroa.39.1 = phi double [ %p_u.sroa.41.0, %for.end940.loopexit ], [ %18, %if.end ]
  %p_um1.sroa.51.1 = phi double [ %p_u.sroa.54.0, %for.end940.loopexit ], [ %19, %if.end ]
  %p_ws.0.lcssa = phi double [ %p_wsp1.02107, %for.end940.loopexit ], [ %44, %if.end ]
  %p_wsp1.0.lcssa = phi double [ %186, %for.end940.loopexit ], [ %112, %if.end ]
  %p_qs.0.lcssa = phi double [ %p_qsp1.02109, %for.end940.loopexit ], [ %45, %if.end ]
  %p_qsp1.0.lcssa = phi double [ %187, %for.end940.loopexit ], [ %113, %if.end ]
  %p_rho_i.0.lcssa = phi double [ %p_rho_ip1.02111, %for.end940.loopexit ], [ %46, %if.end ]
  %p_rho_ip1.0.lcssa = phi double [ %188, %for.end940.loopexit ], [ %114, %if.end ]
  %p_square.0.lcssa = phi double [ %p_squarep1.02113, %for.end940.loopexit ], [ %47, %if.end ]
  %p_squarep1.0.lcssa = phi double [ %189, %for.end940.loopexit ], [ %115, %if.end ]
  %p_vsp1.0.lcssa = phi double [ %185, %for.end940.loopexit ], [ %111, %if.end ]
  %p_vs.0.lcssa = phi double [ %p_vsp1.02114, %for.end940.loopexit ], [ %43, %if.end ]
  %p_usp1.0.lcssa = phi double [ %184, %for.end940.loopexit ], [ %110, %if.end ]
  %p_us.0.lcssa = phi double [ %p_usp1.02116, %for.end940.loopexit ], [ %42, %if.end ]
  %add984 = add nsw i32 %gp1, -1
  %idxprom985 = sext i32 %add984 to i64
  %arrayidx989 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom985, i64 %idxprom9, i64 0
  %257 = load double, double* %arrayidx989, align 8, !tbaa !7
  %arrayidx998 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom985, i64 %idxprom9, i64 1
  %258 = load double, double* %arrayidx998, align 8, !tbaa !7
  %arrayidx1007 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom985, i64 %idxprom9, i64 2
  %259 = load double, double* %arrayidx1007, align 8, !tbaa !7
  %arrayidx1016 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom985, i64 %idxprom9, i64 3
  %260 = load double, double* %arrayidx1016, align 8, !tbaa !7
  %arrayidx1025 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom985, i64 %idxprom9, i64 4
  %261 = load double, double* %arrayidx1025, align 8, !tbaa !7
  %add1029 = add nsw i32 %gp1, -2
  %idxprom1030 = sext i32 %add1029 to i64
  %arrayidx1033 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9
  %262 = load double, double* %arrayidx1033, align 8, !tbaa !7
  %arrayidx1040 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9
  %263 = load double, double* %arrayidx1040, align 8, !tbaa !7
  %arrayidx1047 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9
  %264 = load double, double* %arrayidx1047, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9
  %265 = load double, double* %arrayidx1054, align 8, !tbaa !7
  %arrayidx1061 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9
  %266 = load double, double* %arrayidx1061, align 8, !tbaa !7
  %arrayidx1068 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9
  %267 = load double, double* %arrayidx1068, align 8, !tbaa !7
  %idxprom1071 = sext i32 %.pre2323 to i64
  %arrayidx1075 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1071, i64 %idxprom9, i64 0
  %268 = load double, double* %arrayidx1075, align 8, !tbaa !7
  %269 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double -2.000000e+00, double %p_up2.sroa.0.1)
  %add1079 = fadd double %p_u.sroa.0.1, %269
  %270 = tail call double @llvm.fmuladd.f64(double %add1079, double 0x40D2FC3000000001, double %268)
  %sub1082 = fsub double %p_up2.sroa.22.1, %p_u.sroa.28.1
  %271 = tail call double @llvm.fmuladd.f64(double %sub1082, double -8.050000e+01, double %270)
  %arrayidx1090 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1071, i64 %idxprom9, i64 1
  %272 = load double, double* %arrayidx1090, align 8, !tbaa !7
  %273 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double -2.000000e+00, double %p_up2.sroa.12.1)
  %add1094 = fadd double %p_u.sroa.15.1, %273
  %274 = tail call double @llvm.fmuladd.f64(double %add1094, double 0x40D2FC3000000001, double %272)
  %275 = tail call double @llvm.fmuladd.f64(double %p_usp1.0.lcssa, double -2.000000e+00, double %262)
  %add1095 = fadd double %p_us.0.lcssa, %275
  %276 = tail call double @llvm.fmuladd.f64(double %add1095, double 0x40A4403333333334, double %274)
  %277 = fneg double %p_u.sroa.15.1
  %neg1099 = fmul double %p_vs.0.lcssa, %277
  %278 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double %263, double %neg1099)
  %279 = tail call double @llvm.fmuladd.f64(double %278, double -8.050000e+01, double %276)
  %arrayidx1107 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1071, i64 %idxprom9, i64 2
  %280 = load double, double* %arrayidx1107, align 8, !tbaa !7
  %281 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double -2.000000e+00, double %p_up2.sroa.22.1)
  %add1111 = fadd double %p_u.sroa.28.1, %281
  %282 = tail call double @llvm.fmuladd.f64(double %add1111, double 0x40D2FC3000000001, double %280)
  %283 = tail call double @llvm.fmuladd.f64(double %p_vsp1.0.lcssa, double -2.000000e+00, double %263)
  %add1112 = fadd double %p_vs.0.lcssa, %283
  %284 = tail call double @llvm.fmuladd.f64(double %add1112, double 0x40AB004444444445, double %282)
  %285 = fneg double %p_u.sroa.28.1
  %neg1116 = fmul double %p_vs.0.lcssa, %285
  %286 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double %263, double %neg1116)
  %sub1118 = fsub double %p_up2.sroa.42.1, %267
  %sub1120 = fsub double %sub1118, %p_u.sroa.54.1
  %add1121 = fadd double %p_square.0.lcssa, %sub1120
  %287 = tail call double @llvm.fmuladd.f64(double %add1121, double 4.000000e-01, double %286)
  %288 = tail call double @llvm.fmuladd.f64(double %287, double -8.050000e+01, double %284)
  %arrayidx1129 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1071, i64 %idxprom9, i64 3
  %289 = load double, double* %arrayidx1129, align 8, !tbaa !7
  %290 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double -2.000000e+00, double %p_up2.sroa.32.1)
  %add1133 = fadd double %p_u.sroa.41.1, %290
  %291 = tail call double @llvm.fmuladd.f64(double %add1133, double 0x40D2FC3000000001, double %289)
  %292 = tail call double @llvm.fmuladd.f64(double %p_wsp1.0.lcssa, double -2.000000e+00, double %264)
  %add1134 = fadd double %p_ws.0.lcssa, %292
  %293 = tail call double @llvm.fmuladd.f64(double %add1134, double 0x40A4403333333334, double %291)
  %294 = fneg double %p_u.sroa.41.1
  %neg1138 = fmul double %p_vs.0.lcssa, %294
  %295 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double %263, double %neg1138)
  %296 = tail call double @llvm.fmuladd.f64(double %295, double -8.050000e+01, double %293)
  %arrayidx1146 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1071, i64 %idxprom9, i64 4
  %297 = load double, double* %arrayidx1146, align 8, !tbaa !7
  %298 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double -2.000000e+00, double %p_up2.sroa.42.1)
  %add1150 = fadd double %p_u.sroa.54.1, %298
  %299 = tail call double @llvm.fmuladd.f64(double %add1150, double 0x40D2FC3000000001, double %297)
  %300 = tail call double @llvm.fmuladd.f64(double %p_qsp1.0.lcssa, double -2.000000e+00, double %265)
  %add1151 = fadd double %p_qs.0.lcssa, %300
  %301 = tail call double @llvm.fmuladd.f64(double %add1151, double 0xC0A370D4FDF3B645, double %299)
  %302 = fmul double %p_vsp1.0.lcssa, -2.000000e+00
  %neg1154 = fmul double %p_vsp1.0.lcssa, %302
  %303 = tail call double @llvm.fmuladd.f64(double %263, double %263, double %neg1154)
  %304 = tail call double @llvm.fmuladd.f64(double %p_vs.0.lcssa, double %p_vs.0.lcssa, double %303)
  %305 = tail call double @llvm.fmuladd.f64(double %304, double 0x407B004444444445, double %301)
  %306 = fmul double %p_up1.sroa.50.1, -2.000000e+00
  %neg1159 = fmul double %p_rho_ip1.0.lcssa, %306
  %307 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double %266, double %neg1159)
  %308 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.1, double %p_rho_i.0.lcssa, double %307)
  %309 = tail call double @llvm.fmuladd.f64(double %308, double 0x40B3D884189374BC, double %305)
  %neg1163 = fmul double %267, -4.000000e-01
  %310 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double 1.400000e+00, double %neg1163)
  %311 = fneg double %.pre-phi
  %neg1169 = fmul double %p_vs.0.lcssa, %311
  %312 = tail call double @llvm.fmuladd.f64(double %310, double %263, double %neg1169)
  %313 = tail call double @llvm.fmuladd.f64(double %312, double -8.050000e+01, double %309)
  %314 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.0.1, double -4.000000e+00, double %p_um1.sroa.0.1)
  %315 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double 6.000000e+00, double %314)
  %316 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double -4.000000e+00, double %315)
  %317 = tail call double @llvm.fmuladd.f64(double %316, double -2.500000e-01, double %271)
  store double %317, double* %arrayidx1075, align 8, !tbaa !7
  %318 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.15.1, double -4.000000e+00, double %p_um1.sroa.15.1)
  %319 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double 6.000000e+00, double %318)
  %320 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double -4.000000e+00, double %319)
  %321 = tail call double @llvm.fmuladd.f64(double %320, double -2.500000e-01, double %279)
  store double %321, double* %arrayidx1090, align 8, !tbaa !7
  %322 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.28.1, double -4.000000e+00, double %p_um1.sroa.27.1)
  %323 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double 6.000000e+00, double %322)
  %324 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double -4.000000e+00, double %323)
  %325 = tail call double @llvm.fmuladd.f64(double %324, double -2.500000e-01, double %288)
  store double %325, double* %arrayidx1107, align 8, !tbaa !7
  %326 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.41.1, double -4.000000e+00, double %p_um1.sroa.39.1)
  %327 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double 6.000000e+00, double %326)
  %328 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double -4.000000e+00, double %327)
  %329 = tail call double @llvm.fmuladd.f64(double %328, double -2.500000e-01, double %296)
  store double %329, double* %arrayidx1129, align 8, !tbaa !7
  %330 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.1, double -4.000000e+00, double %p_um1.sroa.51.1)
  %331 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double 6.000000e+00, double %330)
  %332 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double -4.000000e+00, double %331)
  %333 = tail call double @llvm.fmuladd.f64(double %332, double -2.500000e-01, double %313)
  store double %333, double* %arrayidx1146, align 8, !tbaa !7
  %arrayidx1243 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom, i64 %idxprom985, i64 %idxprom9
  %334 = load double, double* %arrayidx1243, align 8, !tbaa !7
  %arrayidx1250 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom, i64 %idxprom985, i64 %idxprom9
  %335 = load double, double* %arrayidx1250, align 8, !tbaa !7
  %arrayidx1257 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom, i64 %idxprom985, i64 %idxprom9
  %336 = load double, double* %arrayidx1257, align 8, !tbaa !7
  %arrayidx1264 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom, i64 %idxprom985, i64 %idxprom9
  %337 = load double, double* %arrayidx1264, align 8, !tbaa !7
  %arrayidx1271 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom, i64 %idxprom985, i64 %idxprom9
  %338 = load double, double* %arrayidx1271, align 8, !tbaa !7
  %arrayidx1278 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom, i64 %idxprom985, i64 %idxprom9
  %339 = load double, double* %arrayidx1278, align 8, !tbaa !7
  %arrayidx1285 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9, i64 0
  %340 = load double, double* %arrayidx1285, align 8, !tbaa !7
  %341 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double -2.000000e+00, double %257)
  %add1289 = fadd double %p_up1.sroa.0.1, %341
  %342 = tail call double @llvm.fmuladd.f64(double %add1289, double 0x40D2FC3000000001, double %340)
  %sub1292 = fsub double %259, %p_up1.sroa.26.1
  %343 = tail call double @llvm.fmuladd.f64(double %sub1292, double -8.050000e+01, double %342)
  %arrayidx1300 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9, i64 1
  %344 = load double, double* %arrayidx1300, align 8, !tbaa !7
  %345 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double -2.000000e+00, double %258)
  %add1304 = fadd double %p_up1.sroa.14.1, %345
  %346 = tail call double @llvm.fmuladd.f64(double %add1304, double 0x40D2FC3000000001, double %344)
  %347 = tail call double @llvm.fmuladd.f64(double %262, double -2.000000e+00, double %334)
  %add1305 = fadd double %p_usp1.0.lcssa, %347
  %348 = tail call double @llvm.fmuladd.f64(double %add1305, double 0x40A4403333333334, double %346)
  %349 = fneg double %p_up1.sroa.14.1
  %neg1309 = fmul double %p_vsp1.0.lcssa, %349
  %350 = tail call double @llvm.fmuladd.f64(double %258, double %335, double %neg1309)
  %351 = tail call double @llvm.fmuladd.f64(double %350, double -8.050000e+01, double %348)
  %arrayidx1317 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9, i64 2
  %352 = load double, double* %arrayidx1317, align 8, !tbaa !7
  %353 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double -2.000000e+00, double %259)
  %add1321 = fadd double %p_up1.sroa.26.1, %353
  %354 = tail call double @llvm.fmuladd.f64(double %add1321, double 0x40D2FC3000000001, double %352)
  %355 = tail call double @llvm.fmuladd.f64(double %263, double -2.000000e+00, double %335)
  %add1322 = fadd double %p_vsp1.0.lcssa, %355
  %356 = tail call double @llvm.fmuladd.f64(double %add1322, double 0x40AB004444444445, double %354)
  %357 = fneg double %p_up1.sroa.26.1
  %neg1326 = fmul double %p_vsp1.0.lcssa, %357
  %358 = tail call double @llvm.fmuladd.f64(double %259, double %335, double %neg1326)
  %sub1328 = fsub double %261, %339
  %sub1330 = fsub double %sub1328, %p_up1.sroa.50.1
  %add1331 = fadd double %p_squarep1.0.lcssa, %sub1330
  %359 = tail call double @llvm.fmuladd.f64(double %add1331, double 4.000000e-01, double %358)
  %360 = tail call double @llvm.fmuladd.f64(double %359, double -8.050000e+01, double %356)
  %arrayidx1339 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9, i64 3
  %361 = load double, double* %arrayidx1339, align 8, !tbaa !7
  %362 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double -2.000000e+00, double %260)
  %add1343 = fadd double %p_up1.sroa.38.1, %362
  %363 = tail call double @llvm.fmuladd.f64(double %add1343, double 0x40D2FC3000000001, double %361)
  %364 = tail call double @llvm.fmuladd.f64(double %264, double -2.000000e+00, double %336)
  %add1344 = fadd double %p_wsp1.0.lcssa, %364
  %365 = tail call double @llvm.fmuladd.f64(double %add1344, double 0x40A4403333333334, double %363)
  %366 = fneg double %p_up1.sroa.38.1
  %neg1348 = fmul double %p_vsp1.0.lcssa, %366
  %367 = tail call double @llvm.fmuladd.f64(double %260, double %335, double %neg1348)
  %368 = tail call double @llvm.fmuladd.f64(double %367, double -8.050000e+01, double %365)
  %arrayidx1356 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom1030, i64 %idxprom9, i64 4
  %369 = load double, double* %arrayidx1356, align 8, !tbaa !7
  %370 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double -2.000000e+00, double %261)
  %add1360 = fadd double %p_up1.sroa.50.1, %370
  %371 = tail call double @llvm.fmuladd.f64(double %add1360, double 0x40D2FC3000000001, double %369)
  %372 = tail call double @llvm.fmuladd.f64(double %265, double -2.000000e+00, double %337)
  %add1361 = fadd double %p_qsp1.0.lcssa, %372
  %373 = tail call double @llvm.fmuladd.f64(double %add1361, double 0xC0A370D4FDF3B645, double %371)
  %374 = fmul double %263, -2.000000e+00
  %neg1364 = fmul double %263, %374
  %375 = tail call double @llvm.fmuladd.f64(double %335, double %335, double %neg1364)
  %376 = tail call double @llvm.fmuladd.f64(double %p_vsp1.0.lcssa, double %p_vsp1.0.lcssa, double %375)
  %377 = tail call double @llvm.fmuladd.f64(double %376, double 0x407B004444444445, double %373)
  %378 = fmul double %p_up2.sroa.42.1, -2.000000e+00
  %neg1369 = fmul double %378, %266
  %379 = tail call double @llvm.fmuladd.f64(double %261, double %338, double %neg1369)
  %380 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double %p_rho_ip1.0.lcssa, double %379)
  %381 = tail call double @llvm.fmuladd.f64(double %380, double 0x40B3D884189374BC, double %377)
  %neg1373 = fmul double %339, -4.000000e-01
  %382 = tail call double @llvm.fmuladd.f64(double %261, double 1.400000e+00, double %neg1373)
  %383 = fneg double %.pre-phi2322
  %neg1379 = fmul double %p_vsp1.0.lcssa, %383
  %384 = tail call double @llvm.fmuladd.f64(double %382, double %335, double %neg1379)
  %385 = tail call double @llvm.fmuladd.f64(double %384, double -8.050000e+01, double %381)
  %386 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double -4.000000e+00, double %p_u.sroa.0.1)
  %387 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double 5.000000e+00, double %386)
  %388 = tail call double @llvm.fmuladd.f64(double %387, double -2.500000e-01, double %343)
  store double %388, double* %arrayidx1285, align 8, !tbaa !7
  %389 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double -4.000000e+00, double %p_u.sroa.15.1)
  %390 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double 5.000000e+00, double %389)
  %391 = tail call double @llvm.fmuladd.f64(double %390, double -2.500000e-01, double %351)
  store double %391, double* %arrayidx1300, align 8, !tbaa !7
  %392 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double -4.000000e+00, double %p_u.sroa.28.1)
  %393 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double 5.000000e+00, double %392)
  %394 = tail call double @llvm.fmuladd.f64(double %393, double -2.500000e-01, double %360)
  store double %394, double* %arrayidx1317, align 8, !tbaa !7
  %395 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double -4.000000e+00, double %p_u.sroa.41.1)
  %396 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double 5.000000e+00, double %395)
  %397 = tail call double @llvm.fmuladd.f64(double %396, double -2.500000e-01, double %368)
  store double %397, double* %arrayidx1339, align 8, !tbaa !7
  %398 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double -4.000000e+00, double %p_u.sroa.54.1)
  %399 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double 5.000000e+00, double %398)
  %400 = tail call double @llvm.fmuladd.f64(double %399, double -2.500000e-01, double %385)
  store double %400, double* %arrayidx1356, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.end940, %entry
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @compute_rhs5(double* nocapture readonly %g_u, double* nocapture readonly %g_us, double* nocapture readonly %g_vs, double* nocapture readonly %g_ws, double* nocapture readonly %g_qs, double* nocapture readonly %g_rho_i, double* nocapture readonly %g_square, double* nocapture %g_rhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !15 !kernel_arg_access_qual !16 !kernel_arg_type !17 !kernel_arg_base_type !17 !kernel_arg_type_qual !18 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %sub = add nsw i32 %gp1, -2
  %cmp = icmp sgt i32 %conv, %sub
  %sub5 = add nsw i32 %gp0, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast double* %g_us to [163 x [163 x double]]*
  %3 = bitcast double* %g_vs to [163 x [163 x double]]*
  %4 = bitcast double* %g_ws to [163 x [163 x double]]*
  %5 = bitcast double* %g_qs to [163 x [163 x double]]*
  %6 = bitcast double* %g_rho_i to [163 x [163 x double]]*
  %7 = bitcast double* %g_square to [163 x [163 x double]]*
  %8 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom9 = sext i32 %conv3 to i64
  %arrayidx11 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %9 = load double, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx18 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %10 = load double, double* %arrayidx18, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %11 = load double, double* %arrayidx25, align 8, !tbaa !7
  %arrayidx32 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %12 = load double, double* %arrayidx32, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %13 = load double, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx41 = getelementptr inbounds double, double* %g_u, i64 132845
  %14 = bitcast double* %arrayidx41 to [163 x [163 x [5 x double]]]*
  %arrayidx46 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %14, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %15 = load double, double* %arrayidx46, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %14, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %16 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %14, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %17 = load double, double* %arrayidx60, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %14, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %18 = load double, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %14, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %19 = load double, double* %arrayidx74, align 8, !tbaa !7
  %arrayidx76 = getelementptr inbounds double, double* %g_u, i64 265690
  %20 = bitcast double* %arrayidx76 to [163 x [163 x [5 x double]]]*
  %arrayidx81 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %20, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %21 = load double, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx88 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %20, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %22 = load double, double* %arrayidx88, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %20, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %23 = load double, double* %arrayidx95, align 8, !tbaa !7
  %arrayidx102 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %20, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %24 = load double, double* %arrayidx102, align 8, !tbaa !7
  %arrayidx109 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %20, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %25 = load double, double* %arrayidx109, align 8, !tbaa !7
  %arrayidx115 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 0, i64 %idxprom, i64 %idxprom9
  %26 = load double, double* %arrayidx115, align 8, !tbaa !7
  %arrayidx116 = getelementptr inbounds double, double* %g_us, i64 26569
  %27 = bitcast double* %arrayidx116 to [163 x [163 x double]]*
  %arrayidx120 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %27, i64 0, i64 %idxprom, i64 %idxprom9
  %28 = load double, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx125 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 0, i64 %idxprom, i64 %idxprom9
  %29 = load double, double* %arrayidx125, align 8, !tbaa !7
  %arrayidx126 = getelementptr inbounds double, double* %g_vs, i64 26569
  %30 = bitcast double* %arrayidx126 to [163 x [163 x double]]*
  %arrayidx130 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %30, i64 0, i64 %idxprom, i64 %idxprom9
  %31 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 0, i64 %idxprom, i64 %idxprom9
  %32 = load double, double* %arrayidx135, align 8, !tbaa !7
  %arrayidx136 = getelementptr inbounds double, double* %g_ws, i64 26569
  %33 = bitcast double* %arrayidx136 to [163 x [163 x double]]*
  %arrayidx140 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %33, i64 0, i64 %idxprom, i64 %idxprom9
  %34 = load double, double* %arrayidx140, align 8, !tbaa !7
  %arrayidx145 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 0, i64 %idxprom, i64 %idxprom9
  %35 = load double, double* %arrayidx145, align 8, !tbaa !7
  %arrayidx146 = getelementptr inbounds double, double* %g_qs, i64 26569
  %36 = bitcast double* %arrayidx146 to [163 x [163 x double]]*
  %arrayidx150 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %36, i64 0, i64 %idxprom, i64 %idxprom9
  %37 = load double, double* %arrayidx150, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 0, i64 %idxprom, i64 %idxprom9
  %38 = load double, double* %arrayidx155, align 8, !tbaa !7
  %arrayidx156 = getelementptr inbounds double, double* %g_rho_i, i64 26569
  %39 = bitcast double* %arrayidx156 to [163 x [163 x double]]*
  %arrayidx160 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %39, i64 0, i64 %idxprom, i64 %idxprom9
  %40 = load double, double* %arrayidx160, align 8, !tbaa !7
  %arrayidx165 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 0, i64 %idxprom, i64 %idxprom9
  %41 = load double, double* %arrayidx165, align 8, !tbaa !7
  %arrayidx166 = getelementptr inbounds double, double* %g_square, i64 26569
  %42 = bitcast double* %arrayidx166 to [163 x [163 x double]]*
  %arrayidx170 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %42, i64 0, i64 %idxprom, i64 %idxprom9
  %43 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx213 = getelementptr inbounds double, double* %g_u, i64 398535
  %44 = bitcast double* %arrayidx213 to [163 x [163 x [5 x double]]]*
  %arrayidx218 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %44, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %45 = load double, double* %arrayidx218, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %44, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %46 = load double, double* %arrayidx227, align 8, !tbaa !7
  %arrayidx236 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %44, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %47 = load double, double* %arrayidx236, align 8, !tbaa !7
  %arrayidx245 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %44, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %48 = load double, double* %arrayidx245, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %44, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %49 = load double, double* %arrayidx254, align 8, !tbaa !7
  %arrayidx258 = getelementptr inbounds double, double* %g_us, i64 53138
  %50 = bitcast double* %arrayidx258 to [163 x [163 x double]]*
  %arrayidx262 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %50, i64 0, i64 %idxprom, i64 %idxprom9
  %51 = load double, double* %arrayidx262, align 8, !tbaa !7
  %arrayidx265 = getelementptr inbounds double, double* %g_vs, i64 53138
  %52 = bitcast double* %arrayidx265 to [163 x [163 x double]]*
  %arrayidx269 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %52, i64 0, i64 %idxprom, i64 %idxprom9
  %53 = load double, double* %arrayidx269, align 8, !tbaa !7
  %arrayidx272 = getelementptr inbounds double, double* %g_ws, i64 53138
  %54 = bitcast double* %arrayidx272 to [163 x [163 x double]]*
  %arrayidx276 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %54, i64 0, i64 %idxprom, i64 %idxprom9
  %55 = load double, double* %arrayidx276, align 8, !tbaa !7
  %arrayidx279 = getelementptr inbounds double, double* %g_qs, i64 53138
  %56 = bitcast double* %arrayidx279 to [163 x [163 x double]]*
  %arrayidx283 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %56, i64 0, i64 %idxprom, i64 %idxprom9
  %57 = load double, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds double, double* %g_rho_i, i64 53138
  %58 = bitcast double* %arrayidx286 to [163 x [163 x double]]*
  %arrayidx290 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %58, i64 0, i64 %idxprom, i64 %idxprom9
  %59 = load double, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx293 = getelementptr inbounds double, double* %g_square, i64 53138
  %60 = bitcast double* %arrayidx293 to [163 x [163 x double]]*
  %arrayidx297 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %60, i64 0, i64 %idxprom, i64 %idxprom9
  %61 = load double, double* %arrayidx297, align 8, !tbaa !7
  %arrayidx299 = getelementptr inbounds double, double* %g_rhs, i64 132845
  %62 = bitcast double* %arrayidx299 to [163 x [163 x [5 x double]]]*
  %arrayidx304 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %62, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %63 = load double, double* %arrayidx304, align 8, !tbaa !7
  %64 = tail call double @llvm.fmuladd.f64(double %15, double -2.000000e+00, double %21)
  %add308 = fadd double %9, %64
  %65 = tail call double @llvm.fmuladd.f64(double %add308, double 0x40D9504000000001, double %63)
  %sub311 = fsub double %24, %12
  %66 = tail call double @llvm.fmuladd.f64(double %sub311, double -8.050000e+01, double %65)
  %arrayidx319 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %62, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %67 = load double, double* %arrayidx319, align 8, !tbaa !7
  %68 = tail call double @llvm.fmuladd.f64(double %16, double -2.000000e+00, double %22)
  %add323 = fadd double %10, %68
  %69 = tail call double @llvm.fmuladd.f64(double %add323, double 0x40D9504000000001, double %67)
  %70 = tail call double @llvm.fmuladd.f64(double %28, double -2.000000e+00, double %51)
  %add324 = fadd double %26, %70
  %71 = tail call double @llvm.fmuladd.f64(double %add324, double 0x40A4403333333334, double %69)
  %72 = fneg double %10
  %neg = fmul double %32, %72
  %73 = tail call double @llvm.fmuladd.f64(double %22, double %55, double %neg)
  %74 = tail call double @llvm.fmuladd.f64(double %73, double -8.050000e+01, double %71)
  %arrayidx335 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %62, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %75 = load double, double* %arrayidx335, align 8, !tbaa !7
  %76 = tail call double @llvm.fmuladd.f64(double %17, double -2.000000e+00, double %23)
  %add339 = fadd double %11, %76
  %77 = tail call double @llvm.fmuladd.f64(double %add339, double 0x40D9504000000001, double %75)
  %78 = tail call double @llvm.fmuladd.f64(double %31, double -2.000000e+00, double %53)
  %add340 = fadd double %29, %78
  %79 = tail call double @llvm.fmuladd.f64(double %add340, double 0x40A4403333333334, double %77)
  %80 = fneg double %11
  %neg344 = fmul double %32, %80
  %81 = tail call double @llvm.fmuladd.f64(double %23, double %55, double %neg344)
  %82 = tail call double @llvm.fmuladd.f64(double %81, double -8.050000e+01, double %79)
  %arrayidx352 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %62, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %83 = load double, double* %arrayidx352, align 8, !tbaa !7
  %84 = tail call double @llvm.fmuladd.f64(double %18, double -2.000000e+00, double %24)
  %add356 = fadd double %12, %84
  %85 = tail call double @llvm.fmuladd.f64(double %add356, double 0x40D9504000000001, double %83)
  %86 = tail call double @llvm.fmuladd.f64(double %34, double -2.000000e+00, double %55)
  %add357 = fadd double %32, %86
  %87 = tail call double @llvm.fmuladd.f64(double %add357, double 0x40AB004444444445, double %85)
  %88 = fneg double %12
  %neg361 = fmul double %32, %88
  %89 = tail call double @llvm.fmuladd.f64(double %24, double %55, double %neg361)
  %sub363 = fsub double %25, %61
  %sub365 = fsub double %sub363, %13
  %add366 = fadd double %41, %sub365
  %90 = tail call double @llvm.fmuladd.f64(double %add366, double 4.000000e-01, double %89)
  %91 = tail call double @llvm.fmuladd.f64(double %90, double -8.050000e+01, double %87)
  %arrayidx374 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %62, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %92 = load double, double* %arrayidx374, align 8, !tbaa !7
  %93 = tail call double @llvm.fmuladd.f64(double %19, double -2.000000e+00, double %25)
  %add378 = fadd double %13, %93
  %94 = tail call double @llvm.fmuladd.f64(double %add378, double 0x40D9504000000001, double %92)
  %95 = tail call double @llvm.fmuladd.f64(double %37, double -2.000000e+00, double %57)
  %add379 = fadd double %35, %95
  %96 = tail call double @llvm.fmuladd.f64(double %add379, double 0xC0A370D4FDF3B645, double %94)
  %97 = fmul double %34, -2.000000e+00
  %neg382 = fmul double %34, %97
  %98 = tail call double @llvm.fmuladd.f64(double %55, double %55, double %neg382)
  %99 = tail call double @llvm.fmuladd.f64(double %32, double %32, double %98)
  %100 = tail call double @llvm.fmuladd.f64(double %99, double 0x407B004444444445, double %96)
  %101 = fmul double %19, -2.000000e+00
  %neg387 = fmul double %101, %40
  %102 = tail call double @llvm.fmuladd.f64(double %25, double %59, double %neg387)
  %103 = tail call double @llvm.fmuladd.f64(double %13, double %38, double %102)
  %104 = tail call double @llvm.fmuladd.f64(double %103, double 0x40B3D884189374BC, double %100)
  %neg391 = fmul double %61, -4.000000e-01
  %105 = tail call double @llvm.fmuladd.f64(double %25, double 1.400000e+00, double %neg391)
  %neg395 = fmul double %41, -4.000000e-01
  %106 = tail call double @llvm.fmuladd.f64(double %13, double 1.400000e+00, double %neg395)
  %107 = fneg double %106
  %neg397 = fmul double %32, %107
  %108 = tail call double @llvm.fmuladd.f64(double %105, double %55, double %neg397)
  %109 = tail call double @llvm.fmuladd.f64(double %108, double -8.050000e+01, double %104)
  %neg408 = fmul double %21, -4.000000e+00
  %110 = tail call double @llvm.fmuladd.f64(double %15, double 5.000000e+00, double %neg408)
  %add411 = fadd double %45, %110
  %111 = tail call double @llvm.fmuladd.f64(double %add411, double -2.500000e-01, double %66)
  store double %111, double* %arrayidx304, align 8, !tbaa !7
  %neg408.1 = fmul double %22, -4.000000e+00
  %112 = tail call double @llvm.fmuladd.f64(double %16, double 5.000000e+00, double %neg408.1)
  %add411.1 = fadd double %46, %112
  %113 = tail call double @llvm.fmuladd.f64(double %add411.1, double -2.500000e-01, double %74)
  store double %113, double* %arrayidx319, align 8, !tbaa !7
  %neg408.2 = fmul double %23, -4.000000e+00
  %114 = tail call double @llvm.fmuladd.f64(double %17, double 5.000000e+00, double %neg408.2)
  %add411.2 = fadd double %47, %114
  %115 = tail call double @llvm.fmuladd.f64(double %add411.2, double -2.500000e-01, double %82)
  store double %115, double* %arrayidx335, align 8, !tbaa !7
  %neg408.3 = fmul double %24, -4.000000e+00
  %116 = tail call double @llvm.fmuladd.f64(double %18, double 5.000000e+00, double %neg408.3)
  %add411.3 = fadd double %48, %116
  %117 = tail call double @llvm.fmuladd.f64(double %add411.3, double -2.500000e-01, double %91)
  store double %117, double* %arrayidx352, align 8, !tbaa !7
  %neg408.4 = fmul double %25, -4.000000e+00
  %118 = tail call double @llvm.fmuladd.f64(double %19, double 5.000000e+00, double %neg408.4)
  %add411.4 = fadd double %49, %118
  %119 = tail call double @llvm.fmuladd.f64(double %add411.4, double -2.500000e-01, double %109)
  store double %119, double* %arrayidx374, align 8, !tbaa !7
  %120 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %arrayidx462 = getelementptr inbounds double, double* %g_u, i64 531380
  %121 = bitcast double* %arrayidx462 to [163 x [163 x [5 x double]]]*
  %arrayidx467 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %121, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %122 = load double, double* %arrayidx467, align 8, !tbaa !7
  %arrayidx476 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %121, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %123 = load double, double* %arrayidx476, align 8, !tbaa !7
  %arrayidx485 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %121, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %124 = load double, double* %arrayidx485, align 8, !tbaa !7
  %arrayidx494 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %121, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %125 = load double, double* %arrayidx494, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %121, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %126 = load double, double* %arrayidx503, align 8, !tbaa !7
  %arrayidx507 = getelementptr inbounds double, double* %g_us, i64 79707
  %127 = bitcast double* %arrayidx507 to [163 x [163 x double]]*
  %arrayidx511 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %127, i64 0, i64 %idxprom, i64 %idxprom9
  %128 = load double, double* %arrayidx511, align 8, !tbaa !7
  %arrayidx514 = getelementptr inbounds double, double* %g_vs, i64 79707
  %129 = bitcast double* %arrayidx514 to [163 x [163 x double]]*
  %arrayidx518 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %129, i64 0, i64 %idxprom, i64 %idxprom9
  %130 = load double, double* %arrayidx518, align 8, !tbaa !7
  %arrayidx521 = getelementptr inbounds double, double* %g_ws, i64 79707
  %131 = bitcast double* %arrayidx521 to [163 x [163 x double]]*
  %arrayidx525 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %131, i64 0, i64 %idxprom, i64 %idxprom9
  %132 = load double, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx528 = getelementptr inbounds double, double* %g_qs, i64 79707
  %133 = bitcast double* %arrayidx528 to [163 x [163 x double]]*
  %arrayidx532 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %133, i64 0, i64 %idxprom, i64 %idxprom9
  %134 = load double, double* %arrayidx532, align 8, !tbaa !7
  %arrayidx535 = getelementptr inbounds double, double* %g_rho_i, i64 79707
  %135 = bitcast double* %arrayidx535 to [163 x [163 x double]]*
  %arrayidx539 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %135, i64 0, i64 %idxprom, i64 %idxprom9
  %136 = load double, double* %arrayidx539, align 8, !tbaa !7
  %arrayidx542 = getelementptr inbounds double, double* %g_square, i64 79707
  %137 = bitcast double* %arrayidx542 to [163 x [163 x double]]*
  %arrayidx546 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %137, i64 0, i64 %idxprom, i64 %idxprom9
  %138 = load double, double* %arrayidx546, align 8, !tbaa !7
  %arrayidx548 = getelementptr inbounds double, double* %g_rhs, i64 265690
  %139 = bitcast double* %arrayidx548 to [163 x [163 x [5 x double]]]*
  %arrayidx553 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %140 = load double, double* %arrayidx553, align 8, !tbaa !7
  %141 = tail call double @llvm.fmuladd.f64(double %21, double -2.000000e+00, double %45)
  %add557 = fadd double %15, %141
  %142 = tail call double @llvm.fmuladd.f64(double %add557, double 0x40D9504000000001, double %140)
  %sub560 = fsub double %48, %18
  %143 = tail call double @llvm.fmuladd.f64(double %sub560, double -8.050000e+01, double %142)
  %arrayidx568 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %144 = load double, double* %arrayidx568, align 8, !tbaa !7
  %145 = tail call double @llvm.fmuladd.f64(double %22, double -2.000000e+00, double %46)
  %add572 = fadd double %16, %145
  %146 = tail call double @llvm.fmuladd.f64(double %add572, double 0x40D9504000000001, double %144)
  %147 = tail call double @llvm.fmuladd.f64(double %51, double -2.000000e+00, double %128)
  %add573 = fadd double %28, %147
  %148 = tail call double @llvm.fmuladd.f64(double %add573, double 0x40A4403333333334, double %146)
  %149 = fneg double %16
  %neg577 = fmul double %34, %149
  %150 = tail call double @llvm.fmuladd.f64(double %46, double %132, double %neg577)
  %151 = tail call double @llvm.fmuladd.f64(double %150, double -8.050000e+01, double %148)
  %arrayidx585 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %152 = load double, double* %arrayidx585, align 8, !tbaa !7
  %153 = tail call double @llvm.fmuladd.f64(double %23, double -2.000000e+00, double %47)
  %add589 = fadd double %17, %153
  %154 = tail call double @llvm.fmuladd.f64(double %add589, double 0x40D9504000000001, double %152)
  %155 = tail call double @llvm.fmuladd.f64(double %53, double -2.000000e+00, double %130)
  %add590 = fadd double %31, %155
  %156 = tail call double @llvm.fmuladd.f64(double %add590, double 0x40A4403333333334, double %154)
  %157 = fneg double %17
  %neg594 = fmul double %34, %157
  %158 = tail call double @llvm.fmuladd.f64(double %47, double %132, double %neg594)
  %159 = tail call double @llvm.fmuladd.f64(double %158, double -8.050000e+01, double %156)
  %arrayidx602 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %160 = load double, double* %arrayidx602, align 8, !tbaa !7
  %161 = tail call double @llvm.fmuladd.f64(double %24, double -2.000000e+00, double %48)
  %add606 = fadd double %18, %161
  %162 = tail call double @llvm.fmuladd.f64(double %add606, double 0x40D9504000000001, double %160)
  %163 = tail call double @llvm.fmuladd.f64(double %55, double -2.000000e+00, double %132)
  %add607 = fadd double %34, %163
  %164 = tail call double @llvm.fmuladd.f64(double %add607, double 0x40AB004444444445, double %162)
  %165 = fneg double %18
  %neg611 = fmul double %34, %165
  %166 = tail call double @llvm.fmuladd.f64(double %48, double %132, double %neg611)
  %sub613 = fsub double %49, %138
  %sub615 = fsub double %sub613, %19
  %add616 = fadd double %43, %sub615
  %167 = tail call double @llvm.fmuladd.f64(double %add616, double 4.000000e-01, double %166)
  %168 = tail call double @llvm.fmuladd.f64(double %167, double -8.050000e+01, double %164)
  %arrayidx624 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %169 = load double, double* %arrayidx624, align 8, !tbaa !7
  %170 = tail call double @llvm.fmuladd.f64(double %25, double -2.000000e+00, double %49)
  %add628 = fadd double %19, %170
  %171 = tail call double @llvm.fmuladd.f64(double %add628, double 0x40D9504000000001, double %169)
  %172 = tail call double @llvm.fmuladd.f64(double %57, double -2.000000e+00, double %134)
  %add629 = fadd double %37, %172
  %173 = tail call double @llvm.fmuladd.f64(double %add629, double 0xC0A370D4FDF3B645, double %171)
  %174 = fmul double %55, -2.000000e+00
  %neg632 = fmul double %55, %174
  %175 = tail call double @llvm.fmuladd.f64(double %132, double %132, double %neg632)
  %176 = tail call double @llvm.fmuladd.f64(double %34, double %34, double %175)
  %177 = tail call double @llvm.fmuladd.f64(double %176, double 0x407B004444444445, double %173)
  %178 = fmul double %25, -2.000000e+00
  %neg637 = fmul double %178, %59
  %179 = tail call double @llvm.fmuladd.f64(double %49, double %136, double %neg637)
  %180 = tail call double @llvm.fmuladd.f64(double %19, double %40, double %179)
  %181 = tail call double @llvm.fmuladd.f64(double %180, double 0x40B3D884189374BC, double %177)
  %neg641 = fmul double %138, -4.000000e-01
  %182 = tail call double @llvm.fmuladd.f64(double %49, double 1.400000e+00, double %neg641)
  %neg645 = fmul double %43, -4.000000e-01
  %183 = tail call double @llvm.fmuladd.f64(double %19, double 1.400000e+00, double %neg645)
  %184 = fneg double %183
  %neg647 = fmul double %34, %184
  %185 = tail call double @llvm.fmuladd.f64(double %182, double %132, double %neg647)
  %186 = tail call double @llvm.fmuladd.f64(double %185, double -8.050000e+01, double %181)
  %mul659 = fmul double %21, 6.000000e+00
  %187 = tail call double @llvm.fmuladd.f64(double %15, double -4.000000e+00, double %mul659)
  %188 = tail call double @llvm.fmuladd.f64(double %45, double -4.000000e+00, double %187)
  %add664 = fadd double %122, %188
  %189 = tail call double @llvm.fmuladd.f64(double %add664, double -2.500000e-01, double %143)
  store double %189, double* %arrayidx553, align 8, !tbaa !7
  %mul659.1 = fmul double %22, 6.000000e+00
  %190 = tail call double @llvm.fmuladd.f64(double %16, double -4.000000e+00, double %mul659.1)
  %191 = tail call double @llvm.fmuladd.f64(double %46, double -4.000000e+00, double %190)
  %add664.1 = fadd double %123, %191
  %192 = tail call double @llvm.fmuladd.f64(double %add664.1, double -2.500000e-01, double %151)
  store double %192, double* %arrayidx568, align 8, !tbaa !7
  %mul659.2 = fmul double %23, 6.000000e+00
  %193 = tail call double @llvm.fmuladd.f64(double %17, double -4.000000e+00, double %mul659.2)
  %194 = tail call double @llvm.fmuladd.f64(double %47, double -4.000000e+00, double %193)
  %add664.2 = fadd double %124, %194
  %195 = tail call double @llvm.fmuladd.f64(double %add664.2, double -2.500000e-01, double %159)
  store double %195, double* %arrayidx585, align 8, !tbaa !7
  %mul659.3 = fmul double %24, 6.000000e+00
  %196 = tail call double @llvm.fmuladd.f64(double %18, double -4.000000e+00, double %mul659.3)
  %197 = tail call double @llvm.fmuladd.f64(double %48, double -4.000000e+00, double %196)
  %add664.3 = fadd double %125, %197
  %198 = tail call double @llvm.fmuladd.f64(double %add664.3, double -2.500000e-01, double %168)
  store double %198, double* %arrayidx602, align 8, !tbaa !7
  %mul659.4 = fmul double %25, 6.000000e+00
  %199 = tail call double @llvm.fmuladd.f64(double %19, double -4.000000e+00, double %mul659.4)
  %200 = tail call double @llvm.fmuladd.f64(double %49, double -4.000000e+00, double %199)
  %add664.4 = fadd double %126, %200
  %201 = tail call double @llvm.fmuladd.f64(double %add664.4, double -2.500000e-01, double %186)
  store double %201, double* %arrayidx624, align 8, !tbaa !7
  %cmp678.not2105 = icmp slt i32 %gp2, 7
  %.pre2323 = add nsw i32 %gp2, -3
  br i1 %cmp678.not2105, label %for.end940, label %for.body680.preheader

for.body680.preheader:                            ; preds = %if.end
  %wide.trip.count = zext i32 %.pre2323 to i64
  br label %for.body680

for.body680:                                      ; preds = %for.body680.preheader, %for.body680
  %p_u.sroa.54.0 = phi double [ %25, %for.body680.preheader ], [ %p_up1.sroa.50.0, %for.body680 ]
  %p_u.sroa.41.0 = phi double [ %24, %for.body680.preheader ], [ %p_up1.sroa.38.0, %for.body680 ]
  %p_u.sroa.28.0 = phi double [ %23, %for.body680.preheader ], [ %p_up1.sroa.26.0, %for.body680 ]
  %p_u.sroa.15.0 = phi double [ %22, %for.body680.preheader ], [ %p_up1.sroa.14.0, %for.body680 ]
  %p_u.sroa.0.0 = phi double [ %21, %for.body680.preheader ], [ %p_up1.sroa.0.0, %for.body680 ]
  %p_up1.sroa.50.0 = phi double [ %49, %for.body680.preheader ], [ %p_up2.sroa.42.0, %for.body680 ]
  %p_up1.sroa.38.0 = phi double [ %48, %for.body680.preheader ], [ %p_up2.sroa.32.0, %for.body680 ]
  %p_up1.sroa.26.0 = phi double [ %47, %for.body680.preheader ], [ %p_up2.sroa.22.0, %for.body680 ]
  %p_up1.sroa.14.0 = phi double [ %46, %for.body680.preheader ], [ %p_up2.sroa.12.0, %for.body680 ]
  %p_up1.sroa.0.0 = phi double [ %45, %for.body680.preheader ], [ %p_up2.sroa.0.0, %for.body680 ]
  %p_up2.sroa.42.0 = phi double [ %126, %for.body680.preheader ], [ %207, %for.body680 ]
  %p_up2.sroa.32.0 = phi double [ %125, %for.body680.preheader ], [ %206, %for.body680 ]
  %p_up2.sroa.22.0 = phi double [ %124, %for.body680.preheader ], [ %205, %for.body680 ]
  %p_up2.sroa.12.0 = phi double [ %123, %for.body680.preheader ], [ %204, %for.body680 ]
  %p_up2.sroa.0.0 = phi double [ %122, %for.body680.preheader ], [ %203, %for.body680 ]
  %p_um1.sroa.0.0 = phi double [ %15, %for.body680.preheader ], [ %p_u.sroa.0.0, %for.body680 ]
  %p_um1.sroa.15.0 = phi double [ %16, %for.body680.preheader ], [ %p_u.sroa.15.0, %for.body680 ]
  %p_um1.sroa.27.0 = phi double [ %17, %for.body680.preheader ], [ %p_u.sroa.28.0, %for.body680 ]
  %p_um1.sroa.39.0 = phi double [ %18, %for.body680.preheader ], [ %p_u.sroa.41.0, %for.body680 ]
  %p_um1.sroa.51.0 = phi double [ %19, %for.body680.preheader ], [ %p_u.sroa.54.0, %for.body680 ]
  %indvars.iv = phi i64 [ 3, %for.body680.preheader ], [ %indvars.iv.next, %for.body680 ]
  %p_us.02117 = phi double [ %51, %for.body680.preheader ], [ %p_usp1.02116, %for.body680 ]
  %p_usp1.02116 = phi double [ %128, %for.body680.preheader ], [ %208, %for.body680 ]
  %p_vs.02115 = phi double [ %53, %for.body680.preheader ], [ %p_vsp1.02114, %for.body680 ]
  %p_vsp1.02114 = phi double [ %130, %for.body680.preheader ], [ %209, %for.body680 ]
  %p_squarep1.02113 = phi double [ %138, %for.body680.preheader ], [ %213, %for.body680 ]
  %p_square.02112 = phi double [ %61, %for.body680.preheader ], [ %p_squarep1.02113, %for.body680 ]
  %p_rho_ip1.02111 = phi double [ %136, %for.body680.preheader ], [ %212, %for.body680 ]
  %p_rho_i.02110 = phi double [ %59, %for.body680.preheader ], [ %p_rho_ip1.02111, %for.body680 ]
  %p_qsp1.02109 = phi double [ %134, %for.body680.preheader ], [ %211, %for.body680 ]
  %p_qs.02108 = phi double [ %57, %for.body680.preheader ], [ %p_qsp1.02109, %for.body680 ]
  %p_wsp1.02107 = phi double [ %132, %for.body680.preheader ], [ %210, %for.body680 ]
  %p_ws.02106 = phi double [ %55, %for.body680.preheader ], [ %p_wsp1.02107, %for.body680 ]
  %202 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx728 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %202, i64 %idxprom, i64 %idxprom9, i64 0
  %203 = load double, double* %arrayidx728, align 8, !tbaa !7
  %arrayidx737 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %202, i64 %idxprom, i64 %idxprom9, i64 1
  %204 = load double, double* %arrayidx737, align 8, !tbaa !7
  %arrayidx746 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %202, i64 %idxprom, i64 %idxprom9, i64 2
  %205 = load double, double* %arrayidx746, align 8, !tbaa !7
  %arrayidx755 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %202, i64 %idxprom, i64 %idxprom9, i64 3
  %206 = load double, double* %arrayidx755, align 8, !tbaa !7
  %arrayidx764 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %202, i64 %idxprom, i64 %idxprom9, i64 4
  %207 = load double, double* %arrayidx764, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx772 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %208 = load double, double* %arrayidx772, align 8, !tbaa !7
  %arrayidx779 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %209 = load double, double* %arrayidx779, align 8, !tbaa !7
  %arrayidx786 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %210 = load double, double* %arrayidx786, align 8, !tbaa !7
  %arrayidx793 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %211 = load double, double* %arrayidx793, align 8, !tbaa !7
  %arrayidx800 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %212 = load double, double* %arrayidx800, align 8, !tbaa !7
  %arrayidx807 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %213 = load double, double* %arrayidx807, align 8, !tbaa !7
  %arrayidx814 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 0
  %214 = load double, double* %arrayidx814, align 8, !tbaa !7
  %215 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.0, double -2.000000e+00, double %p_up2.sroa.0.0)
  %add818 = fadd double %p_u.sroa.0.0, %215
  %216 = tail call double @llvm.fmuladd.f64(double %add818, double 0x40D9504000000001, double %214)
  %sub821 = fsub double %p_up2.sroa.32.0, %p_u.sroa.41.0
  %217 = tail call double @llvm.fmuladd.f64(double %sub821, double -8.050000e+01, double %216)
  %arrayidx829 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 1
  %218 = load double, double* %arrayidx829, align 8, !tbaa !7
  %219 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.0, double -2.000000e+00, double %p_up2.sroa.12.0)
  %add833 = fadd double %p_u.sroa.15.0, %219
  %220 = tail call double @llvm.fmuladd.f64(double %add833, double 0x40D9504000000001, double %218)
  %221 = tail call double @llvm.fmuladd.f64(double %p_usp1.02116, double -2.000000e+00, double %208)
  %add834 = fadd double %p_us.02117, %221
  %222 = tail call double @llvm.fmuladd.f64(double %add834, double 0x40A4403333333334, double %220)
  %223 = fneg double %p_u.sroa.15.0
  %neg838 = fmul double %p_ws.02106, %223
  %224 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.0, double %210, double %neg838)
  %225 = tail call double @llvm.fmuladd.f64(double %224, double -8.050000e+01, double %222)
  %arrayidx846 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 2
  %226 = load double, double* %arrayidx846, align 8, !tbaa !7
  %227 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.0, double -2.000000e+00, double %p_up2.sroa.22.0)
  %add850 = fadd double %p_u.sroa.28.0, %227
  %228 = tail call double @llvm.fmuladd.f64(double %add850, double 0x40D9504000000001, double %226)
  %229 = tail call double @llvm.fmuladd.f64(double %p_vsp1.02114, double -2.000000e+00, double %209)
  %add851 = fadd double %p_vs.02115, %229
  %230 = tail call double @llvm.fmuladd.f64(double %add851, double 0x40A4403333333334, double %228)
  %231 = fneg double %p_u.sroa.28.0
  %neg855 = fmul double %p_ws.02106, %231
  %232 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.0, double %210, double %neg855)
  %233 = tail call double @llvm.fmuladd.f64(double %232, double -8.050000e+01, double %230)
  %arrayidx863 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 3
  %234 = load double, double* %arrayidx863, align 8, !tbaa !7
  %235 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.0, double -2.000000e+00, double %p_up2.sroa.32.0)
  %add867 = fadd double %p_u.sroa.41.0, %235
  %236 = tail call double @llvm.fmuladd.f64(double %add867, double 0x40D9504000000001, double %234)
  %237 = tail call double @llvm.fmuladd.f64(double %p_wsp1.02107, double -2.000000e+00, double %210)
  %add868 = fadd double %p_ws.02106, %237
  %238 = tail call double @llvm.fmuladd.f64(double %add868, double 0x40AB004444444445, double %236)
  %239 = fneg double %p_u.sroa.41.0
  %neg872 = fmul double %p_ws.02106, %239
  %240 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.0, double %210, double %neg872)
  %sub874 = fsub double %p_up2.sroa.42.0, %213
  %sub876 = fsub double %sub874, %p_u.sroa.54.0
  %add877 = fadd double %p_square.02112, %sub876
  %241 = tail call double @llvm.fmuladd.f64(double %add877, double 4.000000e-01, double %240)
  %242 = tail call double @llvm.fmuladd.f64(double %241, double -8.050000e+01, double %238)
  %arrayidx885 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 4
  %243 = load double, double* %arrayidx885, align 8, !tbaa !7
  %244 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double -2.000000e+00, double %p_up2.sroa.42.0)
  %add889 = fadd double %p_u.sroa.54.0, %244
  %245 = tail call double @llvm.fmuladd.f64(double %add889, double 0x40D9504000000001, double %243)
  %246 = tail call double @llvm.fmuladd.f64(double %p_qsp1.02109, double -2.000000e+00, double %211)
  %add890 = fadd double %p_qs.02108, %246
  %247 = tail call double @llvm.fmuladd.f64(double %add890, double 0xC0A370D4FDF3B645, double %245)
  %248 = fmul double %p_wsp1.02107, -2.000000e+00
  %neg893 = fmul double %p_wsp1.02107, %248
  %249 = tail call double @llvm.fmuladd.f64(double %210, double %210, double %neg893)
  %250 = tail call double @llvm.fmuladd.f64(double %p_ws.02106, double %p_ws.02106, double %249)
  %251 = tail call double @llvm.fmuladd.f64(double %250, double 0x407B004444444445, double %247)
  %252 = fmul double %p_up1.sroa.50.0, -2.000000e+00
  %neg898 = fmul double %p_rho_ip1.02111, %252
  %253 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double %212, double %neg898)
  %254 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double %p_rho_i.02110, double %253)
  %255 = tail call double @llvm.fmuladd.f64(double %254, double 0x40B3D884189374BC, double %251)
  %neg902 = fmul double %213, -4.000000e-01
  %256 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double 1.400000e+00, double %neg902)
  %neg906 = fmul double %p_square.02112, -4.000000e-01
  %257 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double 1.400000e+00, double %neg906)
  %258 = fneg double %257
  %neg908 = fmul double %p_ws.02106, %258
  %259 = tail call double @llvm.fmuladd.f64(double %256, double %210, double %neg908)
  %260 = tail call double @llvm.fmuladd.f64(double %259, double -8.050000e+01, double %255)
  %261 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.0.0, double -4.000000e+00, double %p_um1.sroa.0.0)
  %262 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.0, double 6.000000e+00, double %261)
  %263 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.0, double -4.000000e+00, double %262)
  %add926 = fadd double %263, %203
  %264 = tail call double @llvm.fmuladd.f64(double %add926, double -2.500000e-01, double %217)
  store double %264, double* %arrayidx814, align 8, !tbaa !7
  %265 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.15.0, double -4.000000e+00, double %p_um1.sroa.15.0)
  %266 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.0, double 6.000000e+00, double %265)
  %267 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.0, double -4.000000e+00, double %266)
  %add926.1 = fadd double %267, %204
  %268 = tail call double @llvm.fmuladd.f64(double %add926.1, double -2.500000e-01, double %225)
  store double %268, double* %arrayidx829, align 8, !tbaa !7
  %269 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.28.0, double -4.000000e+00, double %p_um1.sroa.27.0)
  %270 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.0, double 6.000000e+00, double %269)
  %271 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.0, double -4.000000e+00, double %270)
  %add926.2 = fadd double %271, %205
  %272 = tail call double @llvm.fmuladd.f64(double %add926.2, double -2.500000e-01, double %233)
  store double %272, double* %arrayidx846, align 8, !tbaa !7
  %273 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.41.0, double -4.000000e+00, double %p_um1.sroa.39.0)
  %274 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.0, double 6.000000e+00, double %273)
  %275 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.0, double -4.000000e+00, double %274)
  %add926.3 = fadd double %275, %206
  %276 = tail call double @llvm.fmuladd.f64(double %add926.3, double -2.500000e-01, double %242)
  store double %276, double* %arrayidx863, align 8, !tbaa !7
  %277 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.0, double -4.000000e+00, double %p_um1.sroa.51.0)
  %278 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double 6.000000e+00, double %277)
  %279 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.0, double -4.000000e+00, double %278)
  %add926.4 = fadd double %279, %207
  %280 = tail call double @llvm.fmuladd.f64(double %add926.4, double -2.500000e-01, double %260)
  store double %280, double* %arrayidx885, align 8, !tbaa !7
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end940.loopexit, label %for.body680

for.end940.loopexit:                              ; preds = %for.body680
  %.pre = fmul double %p_squarep1.02113, -4.000000e-01
  %.pre2321 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.0, double 1.400000e+00, double %.pre)
  br label %for.end940

for.end940:                                       ; preds = %if.end, %for.end940.loopexit
  %.pre-phi2322 = phi double [ %256, %for.end940.loopexit ], [ %182, %if.end ]
  %.pre-phi = phi double [ %.pre2321, %for.end940.loopexit ], [ %105, %if.end ]
  %p_u.sroa.54.1 = phi double [ %p_up1.sroa.50.0, %for.end940.loopexit ], [ %25, %if.end ]
  %p_u.sroa.41.1 = phi double [ %p_up1.sroa.38.0, %for.end940.loopexit ], [ %24, %if.end ]
  %p_u.sroa.28.1 = phi double [ %p_up1.sroa.26.0, %for.end940.loopexit ], [ %23, %if.end ]
  %p_u.sroa.15.1 = phi double [ %p_up1.sroa.14.0, %for.end940.loopexit ], [ %22, %if.end ]
  %p_u.sroa.0.1 = phi double [ %p_up1.sroa.0.0, %for.end940.loopexit ], [ %21, %if.end ]
  %p_up1.sroa.50.1 = phi double [ %p_up2.sroa.42.0, %for.end940.loopexit ], [ %49, %if.end ]
  %p_up1.sroa.38.1 = phi double [ %p_up2.sroa.32.0, %for.end940.loopexit ], [ %48, %if.end ]
  %p_up1.sroa.26.1 = phi double [ %p_up2.sroa.22.0, %for.end940.loopexit ], [ %47, %if.end ]
  %p_up1.sroa.14.1 = phi double [ %p_up2.sroa.12.0, %for.end940.loopexit ], [ %46, %if.end ]
  %p_up1.sroa.0.1 = phi double [ %p_up2.sroa.0.0, %for.end940.loopexit ], [ %45, %if.end ]
  %p_up2.sroa.42.1 = phi double [ %207, %for.end940.loopexit ], [ %126, %if.end ]
  %p_up2.sroa.32.1 = phi double [ %206, %for.end940.loopexit ], [ %125, %if.end ]
  %p_up2.sroa.22.1 = phi double [ %205, %for.end940.loopexit ], [ %124, %if.end ]
  %p_up2.sroa.12.1 = phi double [ %204, %for.end940.loopexit ], [ %123, %if.end ]
  %p_up2.sroa.0.1 = phi double [ %203, %for.end940.loopexit ], [ %122, %if.end ]
  %p_um1.sroa.0.1 = phi double [ %p_u.sroa.0.0, %for.end940.loopexit ], [ %15, %if.end ]
  %p_um1.sroa.15.1 = phi double [ %p_u.sroa.15.0, %for.end940.loopexit ], [ %16, %if.end ]
  %p_um1.sroa.27.1 = phi double [ %p_u.sroa.28.0, %for.end940.loopexit ], [ %17, %if.end ]
  %p_um1.sroa.39.1 = phi double [ %p_u.sroa.41.0, %for.end940.loopexit ], [ %18, %if.end ]
  %p_um1.sroa.51.1 = phi double [ %p_u.sroa.54.0, %for.end940.loopexit ], [ %19, %if.end ]
  %p_ws.0.lcssa = phi double [ %p_wsp1.02107, %for.end940.loopexit ], [ %55, %if.end ]
  %p_wsp1.0.lcssa = phi double [ %210, %for.end940.loopexit ], [ %132, %if.end ]
  %p_qs.0.lcssa = phi double [ %p_qsp1.02109, %for.end940.loopexit ], [ %57, %if.end ]
  %p_qsp1.0.lcssa = phi double [ %211, %for.end940.loopexit ], [ %134, %if.end ]
  %p_rho_i.0.lcssa = phi double [ %p_rho_ip1.02111, %for.end940.loopexit ], [ %59, %if.end ]
  %p_rho_ip1.0.lcssa = phi double [ %212, %for.end940.loopexit ], [ %136, %if.end ]
  %p_square.0.lcssa = phi double [ %p_squarep1.02113, %for.end940.loopexit ], [ %61, %if.end ]
  %p_squarep1.0.lcssa = phi double [ %213, %for.end940.loopexit ], [ %138, %if.end ]
  %p_vsp1.0.lcssa = phi double [ %209, %for.end940.loopexit ], [ %130, %if.end ]
  %p_vs.0.lcssa = phi double [ %p_vsp1.02114, %for.end940.loopexit ], [ %53, %if.end ]
  %p_usp1.0.lcssa = phi double [ %208, %for.end940.loopexit ], [ %128, %if.end ]
  %p_us.0.lcssa = phi double [ %p_usp1.02116, %for.end940.loopexit ], [ %51, %if.end ]
  %add982 = add nsw i32 %gp2, -1
  %idxprom983 = sext i32 %add982 to i64
  %arrayidx989 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 0
  %281 = load double, double* %arrayidx989, align 8, !tbaa !7
  %arrayidx998 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 1
  %282 = load double, double* %arrayidx998, align 8, !tbaa !7
  %arrayidx1007 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 2
  %283 = load double, double* %arrayidx1007, align 8, !tbaa !7
  %arrayidx1016 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 3
  %284 = load double, double* %arrayidx1016, align 8, !tbaa !7
  %arrayidx1025 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 4
  %285 = load double, double* %arrayidx1025, align 8, !tbaa !7
  %add1027 = add nsw i32 %gp2, -2
  %idxprom1028 = sext i32 %add1027 to i64
  %arrayidx1033 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %286 = load double, double* %arrayidx1033, align 8, !tbaa !7
  %arrayidx1040 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %287 = load double, double* %arrayidx1040, align 8, !tbaa !7
  %arrayidx1047 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %288 = load double, double* %arrayidx1047, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %289 = load double, double* %arrayidx1054, align 8, !tbaa !7
  %arrayidx1061 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %290 = load double, double* %arrayidx1061, align 8, !tbaa !7
  %arrayidx1068 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %291 = load double, double* %arrayidx1068, align 8, !tbaa !7
  %idxprom1069 = sext i32 %.pre2323 to i64
  %arrayidx1075 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 0
  %292 = load double, double* %arrayidx1075, align 8, !tbaa !7
  %293 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double -2.000000e+00, double %p_up2.sroa.0.1)
  %add1079 = fadd double %p_u.sroa.0.1, %293
  %294 = tail call double @llvm.fmuladd.f64(double %add1079, double 0x40D9504000000001, double %292)
  %sub1082 = fsub double %p_up2.sroa.32.1, %p_u.sroa.41.1
  %295 = tail call double @llvm.fmuladd.f64(double %sub1082, double -8.050000e+01, double %294)
  %arrayidx1090 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 1
  %296 = load double, double* %arrayidx1090, align 8, !tbaa !7
  %297 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double -2.000000e+00, double %p_up2.sroa.12.1)
  %add1094 = fadd double %p_u.sroa.15.1, %297
  %298 = tail call double @llvm.fmuladd.f64(double %add1094, double 0x40D9504000000001, double %296)
  %299 = tail call double @llvm.fmuladd.f64(double %p_usp1.0.lcssa, double -2.000000e+00, double %286)
  %add1095 = fadd double %p_us.0.lcssa, %299
  %300 = tail call double @llvm.fmuladd.f64(double %add1095, double 0x40A4403333333334, double %298)
  %301 = fneg double %p_u.sroa.15.1
  %neg1099 = fmul double %p_ws.0.lcssa, %301
  %302 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double %288, double %neg1099)
  %303 = tail call double @llvm.fmuladd.f64(double %302, double -8.050000e+01, double %300)
  %arrayidx1107 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 2
  %304 = load double, double* %arrayidx1107, align 8, !tbaa !7
  %305 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double -2.000000e+00, double %p_up2.sroa.22.1)
  %add1111 = fadd double %p_u.sroa.28.1, %305
  %306 = tail call double @llvm.fmuladd.f64(double %add1111, double 0x40D9504000000001, double %304)
  %307 = tail call double @llvm.fmuladd.f64(double %p_vsp1.0.lcssa, double -2.000000e+00, double %287)
  %add1112 = fadd double %p_vs.0.lcssa, %307
  %308 = tail call double @llvm.fmuladd.f64(double %add1112, double 0x40A4403333333334, double %306)
  %309 = fneg double %p_u.sroa.28.1
  %neg1116 = fmul double %p_ws.0.lcssa, %309
  %310 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double %288, double %neg1116)
  %311 = tail call double @llvm.fmuladd.f64(double %310, double -8.050000e+01, double %308)
  %arrayidx1124 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 3
  %312 = load double, double* %arrayidx1124, align 8, !tbaa !7
  %313 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double -2.000000e+00, double %p_up2.sroa.32.1)
  %add1128 = fadd double %p_u.sroa.41.1, %313
  %314 = tail call double @llvm.fmuladd.f64(double %add1128, double 0x40D9504000000001, double %312)
  %315 = tail call double @llvm.fmuladd.f64(double %p_wsp1.0.lcssa, double -2.000000e+00, double %288)
  %add1129 = fadd double %p_ws.0.lcssa, %315
  %316 = tail call double @llvm.fmuladd.f64(double %add1129, double 0x40AB004444444445, double %314)
  %317 = fneg double %p_u.sroa.41.1
  %neg1133 = fmul double %p_ws.0.lcssa, %317
  %318 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double %288, double %neg1133)
  %sub1135 = fsub double %p_up2.sroa.42.1, %291
  %sub1137 = fsub double %sub1135, %p_u.sroa.54.1
  %add1138 = fadd double %p_square.0.lcssa, %sub1137
  %319 = tail call double @llvm.fmuladd.f64(double %add1138, double 4.000000e-01, double %318)
  %320 = tail call double @llvm.fmuladd.f64(double %319, double -8.050000e+01, double %316)
  %arrayidx1146 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 4
  %321 = load double, double* %arrayidx1146, align 8, !tbaa !7
  %322 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double -2.000000e+00, double %p_up2.sroa.42.1)
  %add1150 = fadd double %p_u.sroa.54.1, %322
  %323 = tail call double @llvm.fmuladd.f64(double %add1150, double 0x40D9504000000001, double %321)
  %324 = tail call double @llvm.fmuladd.f64(double %p_qsp1.0.lcssa, double -2.000000e+00, double %289)
  %add1151 = fadd double %p_qs.0.lcssa, %324
  %325 = tail call double @llvm.fmuladd.f64(double %add1151, double 0xC0A370D4FDF3B645, double %323)
  %326 = fmul double %p_wsp1.0.lcssa, -2.000000e+00
  %neg1154 = fmul double %p_wsp1.0.lcssa, %326
  %327 = tail call double @llvm.fmuladd.f64(double %288, double %288, double %neg1154)
  %328 = tail call double @llvm.fmuladd.f64(double %p_ws.0.lcssa, double %p_ws.0.lcssa, double %327)
  %329 = tail call double @llvm.fmuladd.f64(double %328, double 0x407B004444444445, double %325)
  %330 = fmul double %p_up1.sroa.50.1, -2.000000e+00
  %neg1159 = fmul double %p_rho_ip1.0.lcssa, %330
  %331 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double %290, double %neg1159)
  %332 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.1, double %p_rho_i.0.lcssa, double %331)
  %333 = tail call double @llvm.fmuladd.f64(double %332, double 0x40B3D884189374BC, double %329)
  %neg1163 = fmul double %291, -4.000000e-01
  %334 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double 1.400000e+00, double %neg1163)
  %335 = fneg double %.pre-phi
  %neg1169 = fmul double %p_ws.0.lcssa, %335
  %336 = tail call double @llvm.fmuladd.f64(double %334, double %288, double %neg1169)
  %337 = tail call double @llvm.fmuladd.f64(double %336, double -8.050000e+01, double %333)
  %338 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.0.1, double -4.000000e+00, double %p_um1.sroa.0.1)
  %339 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double 6.000000e+00, double %338)
  %340 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double -4.000000e+00, double %339)
  %341 = tail call double @llvm.fmuladd.f64(double %340, double -2.500000e-01, double %295)
  store double %341, double* %arrayidx1075, align 8, !tbaa !7
  %342 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.15.1, double -4.000000e+00, double %p_um1.sroa.15.1)
  %343 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double 6.000000e+00, double %342)
  %344 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double -4.000000e+00, double %343)
  %345 = tail call double @llvm.fmuladd.f64(double %344, double -2.500000e-01, double %303)
  store double %345, double* %arrayidx1090, align 8, !tbaa !7
  %346 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.28.1, double -4.000000e+00, double %p_um1.sroa.27.1)
  %347 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double 6.000000e+00, double %346)
  %348 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double -4.000000e+00, double %347)
  %349 = tail call double @llvm.fmuladd.f64(double %348, double -2.500000e-01, double %311)
  store double %349, double* %arrayidx1107, align 8, !tbaa !7
  %350 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.41.1, double -4.000000e+00, double %p_um1.sroa.39.1)
  %351 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double 6.000000e+00, double %350)
  %352 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double -4.000000e+00, double %351)
  %353 = tail call double @llvm.fmuladd.f64(double %352, double -2.500000e-01, double %320)
  store double %353, double* %arrayidx1124, align 8, !tbaa !7
  %354 = tail call double @llvm.fmuladd.f64(double %p_u.sroa.54.1, double -4.000000e+00, double %p_um1.sroa.51.1)
  %355 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double 6.000000e+00, double %354)
  %356 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double -4.000000e+00, double %355)
  %357 = tail call double @llvm.fmuladd.f64(double %356, double -2.500000e-01, double %337)
  store double %357, double* %arrayidx1146, align 8, !tbaa !7
  %arrayidx1243 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %358 = load double, double* %arrayidx1243, align 8, !tbaa !7
  %arrayidx1250 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %359 = load double, double* %arrayidx1250, align 8, !tbaa !7
  %arrayidx1257 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %360 = load double, double* %arrayidx1257, align 8, !tbaa !7
  %arrayidx1264 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %5, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %361 = load double, double* %arrayidx1264, align 8, !tbaa !7
  %arrayidx1271 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %6, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %362 = load double, double* %arrayidx1271, align 8, !tbaa !7
  %arrayidx1278 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %7, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %363 = load double, double* %arrayidx1278, align 8, !tbaa !7
  %arrayidx1285 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 0
  %364 = load double, double* %arrayidx1285, align 8, !tbaa !7
  %365 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double -2.000000e+00, double %281)
  %add1289 = fadd double %p_up1.sroa.0.1, %365
  %366 = tail call double @llvm.fmuladd.f64(double %add1289, double 0x40D9504000000001, double %364)
  %sub1292 = fsub double %284, %p_up1.sroa.38.1
  %367 = tail call double @llvm.fmuladd.f64(double %sub1292, double -8.050000e+01, double %366)
  %arrayidx1300 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 1
  %368 = load double, double* %arrayidx1300, align 8, !tbaa !7
  %369 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double -2.000000e+00, double %282)
  %add1304 = fadd double %p_up1.sroa.14.1, %369
  %370 = tail call double @llvm.fmuladd.f64(double %add1304, double 0x40D9504000000001, double %368)
  %371 = tail call double @llvm.fmuladd.f64(double %286, double -2.000000e+00, double %358)
  %add1305 = fadd double %p_usp1.0.lcssa, %371
  %372 = tail call double @llvm.fmuladd.f64(double %add1305, double 0x40A4403333333334, double %370)
  %373 = fneg double %p_up1.sroa.14.1
  %neg1309 = fmul double %p_wsp1.0.lcssa, %373
  %374 = tail call double @llvm.fmuladd.f64(double %282, double %360, double %neg1309)
  %375 = tail call double @llvm.fmuladd.f64(double %374, double -8.050000e+01, double %372)
  %arrayidx1317 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 2
  %376 = load double, double* %arrayidx1317, align 8, !tbaa !7
  %377 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double -2.000000e+00, double %283)
  %add1321 = fadd double %p_up1.sroa.26.1, %377
  %378 = tail call double @llvm.fmuladd.f64(double %add1321, double 0x40D9504000000001, double %376)
  %379 = tail call double @llvm.fmuladd.f64(double %287, double -2.000000e+00, double %359)
  %add1322 = fadd double %p_vsp1.0.lcssa, %379
  %380 = tail call double @llvm.fmuladd.f64(double %add1322, double 0x40A4403333333334, double %378)
  %381 = fneg double %p_up1.sroa.26.1
  %neg1326 = fmul double %p_wsp1.0.lcssa, %381
  %382 = tail call double @llvm.fmuladd.f64(double %283, double %360, double %neg1326)
  %383 = tail call double @llvm.fmuladd.f64(double %382, double -8.050000e+01, double %380)
  %arrayidx1334 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 3
  %384 = load double, double* %arrayidx1334, align 8, !tbaa !7
  %385 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double -2.000000e+00, double %284)
  %add1338 = fadd double %p_up1.sroa.38.1, %385
  %386 = tail call double @llvm.fmuladd.f64(double %add1338, double 0x40D9504000000001, double %384)
  %387 = tail call double @llvm.fmuladd.f64(double %288, double -2.000000e+00, double %360)
  %add1339 = fadd double %p_wsp1.0.lcssa, %387
  %388 = tail call double @llvm.fmuladd.f64(double %add1339, double 0x40AB004444444445, double %386)
  %389 = fneg double %p_up1.sroa.38.1
  %neg1343 = fmul double %p_wsp1.0.lcssa, %389
  %390 = tail call double @llvm.fmuladd.f64(double %284, double %360, double %neg1343)
  %sub1345 = fsub double %285, %363
  %sub1347 = fsub double %sub1345, %p_up1.sroa.50.1
  %add1348 = fadd double %p_squarep1.0.lcssa, %sub1347
  %391 = tail call double @llvm.fmuladd.f64(double %add1348, double 4.000000e-01, double %390)
  %392 = tail call double @llvm.fmuladd.f64(double %391, double -8.050000e+01, double %388)
  %arrayidx1356 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %120, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 4
  %393 = load double, double* %arrayidx1356, align 8, !tbaa !7
  %394 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double -2.000000e+00, double %285)
  %add1360 = fadd double %p_up1.sroa.50.1, %394
  %395 = tail call double @llvm.fmuladd.f64(double %add1360, double 0x40D9504000000001, double %393)
  %396 = tail call double @llvm.fmuladd.f64(double %289, double -2.000000e+00, double %361)
  %add1361 = fadd double %p_qsp1.0.lcssa, %396
  %397 = tail call double @llvm.fmuladd.f64(double %add1361, double 0xC0A370D4FDF3B645, double %395)
  %398 = fmul double %288, -2.000000e+00
  %neg1364 = fmul double %288, %398
  %399 = tail call double @llvm.fmuladd.f64(double %360, double %360, double %neg1364)
  %400 = tail call double @llvm.fmuladd.f64(double %p_wsp1.0.lcssa, double %p_wsp1.0.lcssa, double %399)
  %401 = tail call double @llvm.fmuladd.f64(double %400, double 0x407B004444444445, double %397)
  %402 = fmul double %p_up2.sroa.42.1, -2.000000e+00
  %neg1369 = fmul double %402, %290
  %403 = tail call double @llvm.fmuladd.f64(double %285, double %362, double %neg1369)
  %404 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double %p_rho_ip1.0.lcssa, double %403)
  %405 = tail call double @llvm.fmuladd.f64(double %404, double 0x40B3D884189374BC, double %401)
  %neg1373 = fmul double %363, -4.000000e-01
  %406 = tail call double @llvm.fmuladd.f64(double %285, double 1.400000e+00, double %neg1373)
  %407 = fneg double %.pre-phi2322
  %neg1379 = fmul double %p_wsp1.0.lcssa, %407
  %408 = tail call double @llvm.fmuladd.f64(double %406, double %360, double %neg1379)
  %409 = tail call double @llvm.fmuladd.f64(double %408, double -8.050000e+01, double %405)
  %410 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.0.1, double -4.000000e+00, double %p_u.sroa.0.1)
  %411 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.0.1, double 5.000000e+00, double %410)
  %412 = tail call double @llvm.fmuladd.f64(double %411, double -2.500000e-01, double %367)
  store double %412, double* %arrayidx1285, align 8, !tbaa !7
  %413 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.14.1, double -4.000000e+00, double %p_u.sroa.15.1)
  %414 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.12.1, double 5.000000e+00, double %413)
  %415 = tail call double @llvm.fmuladd.f64(double %414, double -2.500000e-01, double %375)
  store double %415, double* %arrayidx1300, align 8, !tbaa !7
  %416 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.26.1, double -4.000000e+00, double %p_u.sroa.28.1)
  %417 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.22.1, double 5.000000e+00, double %416)
  %418 = tail call double @llvm.fmuladd.f64(double %417, double -2.500000e-01, double %383)
  store double %418, double* %arrayidx1317, align 8, !tbaa !7
  %419 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.38.1, double -4.000000e+00, double %p_u.sroa.41.1)
  %420 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.32.1, double 5.000000e+00, double %419)
  %421 = tail call double @llvm.fmuladd.f64(double %420, double -2.500000e-01, double %392)
  store double %421, double* %arrayidx1334, align 8, !tbaa !7
  %422 = tail call double @llvm.fmuladd.f64(double %p_up1.sroa.50.1, double -4.000000e+00, double %p_u.sroa.54.1)
  %423 = tail call double @llvm.fmuladd.f64(double %p_up2.sroa.42.1, double 5.000000e+00, double %422)
  %424 = tail call double @llvm.fmuladd.f64(double %423, double -2.500000e-01, double %409)
  store double %424, double* %arrayidx1356, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.end940, %entry
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @compute_rhs6(double* nocapture %g_rhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !19 !kernel_arg_access_qual !20 !kernel_arg_type !21 !kernel_arg_base_type !21 !kernel_arg_type_qual !22 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  %sub8 = add nsw i32 %gp1, -2
  %cmp9 = icmp sgt i32 %conv3, %sub8
  %or.cond = or i1 %cmp, %cmp9
  %sub12 = add nsw i32 %gp0, -2
  %cmp13 = icmp sgt i32 %conv6, %sub12
  %or.cond49 = or i1 %or.cond, %cmp13
  br i1 %or.cond49, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom17 = sext i32 %conv3 to i64
  %idxprom19 = sext i32 %conv6 to i64
  %arrayidx22 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 0
  %4 = load double, double* %arrayidx22, align 8, !tbaa !7
  %mul = fmul double %4, 1.000000e-04
  store double %mul, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx22.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 1
  %5 = load double, double* %arrayidx22.1, align 8, !tbaa !7
  %mul.1 = fmul double %5, 1.000000e-04
  store double %mul.1, double* %arrayidx22.1, align 8, !tbaa !7
  %arrayidx22.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 2
  %6 = load double, double* %arrayidx22.2, align 8, !tbaa !7
  %mul.2 = fmul double %6, 1.000000e-04
  store double %mul.2, double* %arrayidx22.2, align 8, !tbaa !7
  %arrayidx22.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 3
  %7 = load double, double* %arrayidx22.3, align 8, !tbaa !7
  %mul.3 = fmul double %7, 1.000000e-04
  store double %mul.3, double* %arrayidx22.3, align 8, !tbaa !7
  %arrayidx22.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 4
  %8 = load double, double* %arrayidx22.4, align 8, !tbaa !7
  %mul.4 = fmul double %8, 1.000000e-04
  store double %mul.4, double* %arrayidx22.4, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @p_matvec_sub([5 x double]* readonly %ablock, double* nocapture readonly %avec, double* nocapture %bvec) local_unnamed_addr #4 {
entry:
  %0 = load double, double* %bvec, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 0
  %1 = load double, double* %arrayidx2, align 8, !tbaa !7
  %2 = load double, double* %avec, align 8, !tbaa !7
  %neg = fneg double %1
  %3 = tail call double @llvm.fmuladd.f64(double %neg, double %2, double %0)
  %arrayidx5 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 0
  %4 = load double, double* %arrayidx5, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds double, double* %avec, i64 1
  %5 = load double, double* %arrayidx6, align 8, !tbaa !7
  %neg7 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %neg7, double %5, double %3)
  %arrayidx9 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 0
  %7 = load double, double* %arrayidx9, align 8, !tbaa !7
  %arrayidx10 = getelementptr inbounds double, double* %avec, i64 2
  %8 = load double, double* %arrayidx10, align 8, !tbaa !7
  %neg11 = fneg double %7
  %9 = tail call double @llvm.fmuladd.f64(double %neg11, double %8, double %6)
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 0
  %10 = load double, double* %arrayidx13, align 8, !tbaa !7
  %arrayidx14 = getelementptr inbounds double, double* %avec, i64 3
  %11 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg15 = fneg double %10
  %12 = tail call double @llvm.fmuladd.f64(double %neg15, double %11, double %9)
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 0
  %13 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx18 = getelementptr inbounds double, double* %avec, i64 4
  %14 = load double, double* %arrayidx18, align 8, !tbaa !7
  %neg19 = fneg double %13
  %15 = tail call double @llvm.fmuladd.f64(double %neg19, double %14, double %12)
  store double %15, double* %bvec, align 8, !tbaa !7
  %arrayidx21 = getelementptr inbounds double, double* %bvec, i64 1
  %16 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 1
  %17 = load double, double* %arrayidx23, align 8, !tbaa !7
  %18 = load double, double* %avec, align 8, !tbaa !7
  %neg25 = fneg double %17
  %19 = tail call double @llvm.fmuladd.f64(double %neg25, double %18, double %16)
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 1
  %20 = load double, double* %arrayidx27, align 8, !tbaa !7
  %21 = load double, double* %arrayidx6, align 8, !tbaa !7
  %neg29 = fneg double %20
  %22 = tail call double @llvm.fmuladd.f64(double %neg29, double %21, double %19)
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 1
  %23 = load double, double* %arrayidx31, align 8, !tbaa !7
  %24 = load double, double* %arrayidx10, align 8, !tbaa !7
  %neg33 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %neg33, double %24, double %22)
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 1
  %26 = load double, double* %arrayidx35, align 8, !tbaa !7
  %27 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg37 = fneg double %26
  %28 = tail call double @llvm.fmuladd.f64(double %neg37, double %27, double %25)
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 1
  %29 = load double, double* %arrayidx39, align 8, !tbaa !7
  %30 = load double, double* %arrayidx18, align 8, !tbaa !7
  %neg41 = fneg double %29
  %31 = tail call double @llvm.fmuladd.f64(double %neg41, double %30, double %28)
  store double %31, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx43 = getelementptr inbounds double, double* %bvec, i64 2
  %32 = load double, double* %arrayidx43, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 2
  %33 = load double, double* %arrayidx45, align 8, !tbaa !7
  %34 = load double, double* %avec, align 8, !tbaa !7
  %neg47 = fneg double %33
  %35 = tail call double @llvm.fmuladd.f64(double %neg47, double %34, double %32)
  %arrayidx49 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 2
  %36 = load double, double* %arrayidx49, align 8, !tbaa !7
  %37 = load double, double* %arrayidx6, align 8, !tbaa !7
  %neg51 = fneg double %36
  %38 = tail call double @llvm.fmuladd.f64(double %neg51, double %37, double %35)
  %arrayidx53 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 2
  %39 = load double, double* %arrayidx53, align 8, !tbaa !7
  %40 = load double, double* %arrayidx10, align 8, !tbaa !7
  %neg55 = fneg double %39
  %41 = tail call double @llvm.fmuladd.f64(double %neg55, double %40, double %38)
  %arrayidx57 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 2
  %42 = load double, double* %arrayidx57, align 8, !tbaa !7
  %43 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg59 = fneg double %42
  %44 = tail call double @llvm.fmuladd.f64(double %neg59, double %43, double %41)
  %arrayidx61 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 2
  %45 = load double, double* %arrayidx61, align 8, !tbaa !7
  %46 = load double, double* %arrayidx18, align 8, !tbaa !7
  %neg63 = fneg double %45
  %47 = tail call double @llvm.fmuladd.f64(double %neg63, double %46, double %44)
  store double %47, double* %arrayidx43, align 8, !tbaa !7
  %arrayidx65 = getelementptr inbounds double, double* %bvec, i64 3
  %48 = load double, double* %arrayidx65, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 3
  %49 = load double, double* %arrayidx67, align 8, !tbaa !7
  %50 = load double, double* %avec, align 8, !tbaa !7
  %neg69 = fneg double %49
  %51 = tail call double @llvm.fmuladd.f64(double %neg69, double %50, double %48)
  %arrayidx71 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 3
  %52 = load double, double* %arrayidx71, align 8, !tbaa !7
  %53 = load double, double* %arrayidx6, align 8, !tbaa !7
  %neg73 = fneg double %52
  %54 = tail call double @llvm.fmuladd.f64(double %neg73, double %53, double %51)
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 3
  %55 = load double, double* %arrayidx75, align 8, !tbaa !7
  %56 = load double, double* %arrayidx10, align 8, !tbaa !7
  %neg77 = fneg double %55
  %57 = tail call double @llvm.fmuladd.f64(double %neg77, double %56, double %54)
  %arrayidx79 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 3
  %58 = load double, double* %arrayidx79, align 8, !tbaa !7
  %59 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg81 = fneg double %58
  %60 = tail call double @llvm.fmuladd.f64(double %neg81, double %59, double %57)
  %arrayidx83 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 3
  %61 = load double, double* %arrayidx83, align 8, !tbaa !7
  %62 = load double, double* %arrayidx18, align 8, !tbaa !7
  %neg85 = fneg double %61
  %63 = tail call double @llvm.fmuladd.f64(double %neg85, double %62, double %60)
  store double %63, double* %arrayidx65, align 8, !tbaa !7
  %arrayidx87 = getelementptr inbounds double, double* %bvec, i64 4
  %64 = load double, double* %arrayidx87, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 4
  %65 = load double, double* %arrayidx89, align 8, !tbaa !7
  %66 = load double, double* %avec, align 8, !tbaa !7
  %neg91 = fneg double %65
  %67 = tail call double @llvm.fmuladd.f64(double %neg91, double %66, double %64)
  %arrayidx93 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 4
  %68 = load double, double* %arrayidx93, align 8, !tbaa !7
  %69 = load double, double* %arrayidx6, align 8, !tbaa !7
  %neg95 = fneg double %68
  %70 = tail call double @llvm.fmuladd.f64(double %neg95, double %69, double %67)
  %arrayidx97 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 4
  %71 = load double, double* %arrayidx97, align 8, !tbaa !7
  %72 = load double, double* %arrayidx10, align 8, !tbaa !7
  %neg99 = fneg double %71
  %73 = tail call double @llvm.fmuladd.f64(double %neg99, double %72, double %70)
  %arrayidx101 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 4
  %74 = load double, double* %arrayidx101, align 8, !tbaa !7
  %75 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg103 = fneg double %74
  %76 = tail call double @llvm.fmuladd.f64(double %neg103, double %75, double %73)
  %arrayidx105 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 4
  %77 = load double, double* %arrayidx105, align 8, !tbaa !7
  %78 = load double, double* %arrayidx18, align 8, !tbaa !7
  %neg107 = fneg double %77
  %79 = tail call double @llvm.fmuladd.f64(double %neg107, double %78, double %76)
  store double %79, double* %arrayidx87, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @p_matmul_sub([5 x double]* readonly %ablock, [5 x double]* readonly %bblock, [5 x double]* %cblock) local_unnamed_addr #4 {
entry:
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 0, i64 0
  %0 = load double, double* %arrayidx1, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 0
  %1 = load double, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 0, i64 0
  %2 = load double, double* %arrayidx5, align 8, !tbaa !7
  %neg = fneg double %1
  %3 = tail call double @llvm.fmuladd.f64(double %neg, double %2, double %0)
  %arrayidx7 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 0
  %4 = load double, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 0, i64 1
  %5 = load double, double* %arrayidx9, align 8, !tbaa !7
  %neg10 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %neg10, double %5, double %3)
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 0
  %7 = load double, double* %arrayidx12, align 8, !tbaa !7
  %arrayidx14 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 0, i64 2
  %8 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg15 = fneg double %7
  %9 = tail call double @llvm.fmuladd.f64(double %neg15, double %8, double %6)
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 0
  %10 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 0, i64 3
  %11 = load double, double* %arrayidx19, align 8, !tbaa !7
  %neg20 = fneg double %10
  %12 = tail call double @llvm.fmuladd.f64(double %neg20, double %11, double %9)
  %arrayidx22 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 0
  %13 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx24 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 0, i64 4
  %14 = load double, double* %arrayidx24, align 8, !tbaa !7
  %neg25 = fneg double %13
  %15 = tail call double @llvm.fmuladd.f64(double %neg25, double %14, double %12)
  store double %15, double* %arrayidx1, align 8, !tbaa !7
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 0, i64 1
  %16 = load double, double* %arrayidx29, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 1
  %17 = load double, double* %arrayidx31, align 8, !tbaa !7
  %18 = load double, double* %arrayidx5, align 8, !tbaa !7
  %neg34 = fneg double %17
  %19 = tail call double @llvm.fmuladd.f64(double %neg34, double %18, double %16)
  %arrayidx36 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 1
  %20 = load double, double* %arrayidx36, align 8, !tbaa !7
  %21 = load double, double* %arrayidx9, align 8, !tbaa !7
  %neg39 = fneg double %20
  %22 = tail call double @llvm.fmuladd.f64(double %neg39, double %21, double %19)
  %arrayidx41 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 1
  %23 = load double, double* %arrayidx41, align 8, !tbaa !7
  %24 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg44 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %neg44, double %24, double %22)
  %arrayidx46 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 1
  %26 = load double, double* %arrayidx46, align 8, !tbaa !7
  %27 = load double, double* %arrayidx19, align 8, !tbaa !7
  %neg49 = fneg double %26
  %28 = tail call double @llvm.fmuladd.f64(double %neg49, double %27, double %25)
  %arrayidx51 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 1
  %29 = load double, double* %arrayidx51, align 8, !tbaa !7
  %30 = load double, double* %arrayidx24, align 8, !tbaa !7
  %neg54 = fneg double %29
  %31 = tail call double @llvm.fmuladd.f64(double %neg54, double %30, double %28)
  store double %31, double* %arrayidx29, align 8, !tbaa !7
  %arrayidx58 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 0, i64 2
  %32 = load double, double* %arrayidx58, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 2
  %33 = load double, double* %arrayidx60, align 8, !tbaa !7
  %34 = load double, double* %arrayidx5, align 8, !tbaa !7
  %neg63 = fneg double %33
  %35 = tail call double @llvm.fmuladd.f64(double %neg63, double %34, double %32)
  %arrayidx65 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 2
  %36 = load double, double* %arrayidx65, align 8, !tbaa !7
  %37 = load double, double* %arrayidx9, align 8, !tbaa !7
  %neg68 = fneg double %36
  %38 = tail call double @llvm.fmuladd.f64(double %neg68, double %37, double %35)
  %arrayidx70 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 2
  %39 = load double, double* %arrayidx70, align 8, !tbaa !7
  %40 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg73 = fneg double %39
  %41 = tail call double @llvm.fmuladd.f64(double %neg73, double %40, double %38)
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 2
  %42 = load double, double* %arrayidx75, align 8, !tbaa !7
  %43 = load double, double* %arrayidx19, align 8, !tbaa !7
  %neg78 = fneg double %42
  %44 = tail call double @llvm.fmuladd.f64(double %neg78, double %43, double %41)
  %arrayidx80 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 2
  %45 = load double, double* %arrayidx80, align 8, !tbaa !7
  %46 = load double, double* %arrayidx24, align 8, !tbaa !7
  %neg83 = fneg double %45
  %47 = tail call double @llvm.fmuladd.f64(double %neg83, double %46, double %44)
  store double %47, double* %arrayidx58, align 8, !tbaa !7
  %arrayidx87 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 0, i64 3
  %48 = load double, double* %arrayidx87, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 3
  %49 = load double, double* %arrayidx89, align 8, !tbaa !7
  %50 = load double, double* %arrayidx5, align 8, !tbaa !7
  %neg92 = fneg double %49
  %51 = tail call double @llvm.fmuladd.f64(double %neg92, double %50, double %48)
  %arrayidx94 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 3
  %52 = load double, double* %arrayidx94, align 8, !tbaa !7
  %53 = load double, double* %arrayidx9, align 8, !tbaa !7
  %neg97 = fneg double %52
  %54 = tail call double @llvm.fmuladd.f64(double %neg97, double %53, double %51)
  %arrayidx99 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 3
  %55 = load double, double* %arrayidx99, align 8, !tbaa !7
  %56 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg102 = fneg double %55
  %57 = tail call double @llvm.fmuladd.f64(double %neg102, double %56, double %54)
  %arrayidx104 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 3
  %58 = load double, double* %arrayidx104, align 8, !tbaa !7
  %59 = load double, double* %arrayidx19, align 8, !tbaa !7
  %neg107 = fneg double %58
  %60 = tail call double @llvm.fmuladd.f64(double %neg107, double %59, double %57)
  %arrayidx109 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 3
  %61 = load double, double* %arrayidx109, align 8, !tbaa !7
  %62 = load double, double* %arrayidx24, align 8, !tbaa !7
  %neg112 = fneg double %61
  %63 = tail call double @llvm.fmuladd.f64(double %neg112, double %62, double %60)
  store double %63, double* %arrayidx87, align 8, !tbaa !7
  %arrayidx116 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 0, i64 4
  %64 = load double, double* %arrayidx116, align 8, !tbaa !7
  %arrayidx118 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 0, i64 4
  %65 = load double, double* %arrayidx118, align 8, !tbaa !7
  %66 = load double, double* %arrayidx5, align 8, !tbaa !7
  %neg121 = fneg double %65
  %67 = tail call double @llvm.fmuladd.f64(double %neg121, double %66, double %64)
  %arrayidx123 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 1, i64 4
  %68 = load double, double* %arrayidx123, align 8, !tbaa !7
  %69 = load double, double* %arrayidx9, align 8, !tbaa !7
  %neg126 = fneg double %68
  %70 = tail call double @llvm.fmuladd.f64(double %neg126, double %69, double %67)
  %arrayidx128 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 2, i64 4
  %71 = load double, double* %arrayidx128, align 8, !tbaa !7
  %72 = load double, double* %arrayidx14, align 8, !tbaa !7
  %neg131 = fneg double %71
  %73 = tail call double @llvm.fmuladd.f64(double %neg131, double %72, double %70)
  %arrayidx133 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 3, i64 4
  %74 = load double, double* %arrayidx133, align 8, !tbaa !7
  %75 = load double, double* %arrayidx19, align 8, !tbaa !7
  %neg136 = fneg double %74
  %76 = tail call double @llvm.fmuladd.f64(double %neg136, double %75, double %73)
  %arrayidx138 = getelementptr inbounds [5 x double], [5 x double]* %ablock, i64 4, i64 4
  %77 = load double, double* %arrayidx138, align 8, !tbaa !7
  %78 = load double, double* %arrayidx24, align 8, !tbaa !7
  %neg141 = fneg double %77
  %79 = tail call double @llvm.fmuladd.f64(double %neg141, double %78, double %76)
  store double %79, double* %arrayidx116, align 8, !tbaa !7
  %arrayidx145 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 1, i64 0
  %80 = load double, double* %arrayidx145, align 8, !tbaa !7
  %81 = load double, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx149 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 1, i64 0
  %82 = load double, double* %arrayidx149, align 8, !tbaa !7
  %neg150 = fneg double %81
  %83 = tail call double @llvm.fmuladd.f64(double %neg150, double %82, double %80)
  %84 = load double, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx154 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 1, i64 1
  %85 = load double, double* %arrayidx154, align 8, !tbaa !7
  %neg155 = fneg double %84
  %86 = tail call double @llvm.fmuladd.f64(double %neg155, double %85, double %83)
  %87 = load double, double* %arrayidx12, align 8, !tbaa !7
  %arrayidx159 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 1, i64 2
  %88 = load double, double* %arrayidx159, align 8, !tbaa !7
  %neg160 = fneg double %87
  %89 = tail call double @llvm.fmuladd.f64(double %neg160, double %88, double %86)
  %90 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx164 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 1, i64 3
  %91 = load double, double* %arrayidx164, align 8, !tbaa !7
  %neg165 = fneg double %90
  %92 = tail call double @llvm.fmuladd.f64(double %neg165, double %91, double %89)
  %93 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx169 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 1, i64 4
  %94 = load double, double* %arrayidx169, align 8, !tbaa !7
  %neg170 = fneg double %93
  %95 = tail call double @llvm.fmuladd.f64(double %neg170, double %94, double %92)
  store double %95, double* %arrayidx145, align 8, !tbaa !7
  %arrayidx174 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 1, i64 1
  %96 = load double, double* %arrayidx174, align 8, !tbaa !7
  %97 = load double, double* %arrayidx31, align 8, !tbaa !7
  %98 = load double, double* %arrayidx149, align 8, !tbaa !7
  %neg179 = fneg double %97
  %99 = tail call double @llvm.fmuladd.f64(double %neg179, double %98, double %96)
  %100 = load double, double* %arrayidx36, align 8, !tbaa !7
  %101 = load double, double* %arrayidx154, align 8, !tbaa !7
  %neg184 = fneg double %100
  %102 = tail call double @llvm.fmuladd.f64(double %neg184, double %101, double %99)
  %103 = load double, double* %arrayidx41, align 8, !tbaa !7
  %104 = load double, double* %arrayidx159, align 8, !tbaa !7
  %neg189 = fneg double %103
  %105 = tail call double @llvm.fmuladd.f64(double %neg189, double %104, double %102)
  %106 = load double, double* %arrayidx46, align 8, !tbaa !7
  %107 = load double, double* %arrayidx164, align 8, !tbaa !7
  %neg194 = fneg double %106
  %108 = tail call double @llvm.fmuladd.f64(double %neg194, double %107, double %105)
  %109 = load double, double* %arrayidx51, align 8, !tbaa !7
  %110 = load double, double* %arrayidx169, align 8, !tbaa !7
  %neg199 = fneg double %109
  %111 = tail call double @llvm.fmuladd.f64(double %neg199, double %110, double %108)
  store double %111, double* %arrayidx174, align 8, !tbaa !7
  %arrayidx203 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 1, i64 2
  %112 = load double, double* %arrayidx203, align 8, !tbaa !7
  %113 = load double, double* %arrayidx60, align 8, !tbaa !7
  %114 = load double, double* %arrayidx149, align 8, !tbaa !7
  %neg208 = fneg double %113
  %115 = tail call double @llvm.fmuladd.f64(double %neg208, double %114, double %112)
  %116 = load double, double* %arrayidx65, align 8, !tbaa !7
  %117 = load double, double* %arrayidx154, align 8, !tbaa !7
  %neg213 = fneg double %116
  %118 = tail call double @llvm.fmuladd.f64(double %neg213, double %117, double %115)
  %119 = load double, double* %arrayidx70, align 8, !tbaa !7
  %120 = load double, double* %arrayidx159, align 8, !tbaa !7
  %neg218 = fneg double %119
  %121 = tail call double @llvm.fmuladd.f64(double %neg218, double %120, double %118)
  %122 = load double, double* %arrayidx75, align 8, !tbaa !7
  %123 = load double, double* %arrayidx164, align 8, !tbaa !7
  %neg223 = fneg double %122
  %124 = tail call double @llvm.fmuladd.f64(double %neg223, double %123, double %121)
  %125 = load double, double* %arrayidx80, align 8, !tbaa !7
  %126 = load double, double* %arrayidx169, align 8, !tbaa !7
  %neg228 = fneg double %125
  %127 = tail call double @llvm.fmuladd.f64(double %neg228, double %126, double %124)
  store double %127, double* %arrayidx203, align 8, !tbaa !7
  %arrayidx232 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 1, i64 3
  %128 = load double, double* %arrayidx232, align 8, !tbaa !7
  %129 = load double, double* %arrayidx89, align 8, !tbaa !7
  %130 = load double, double* %arrayidx149, align 8, !tbaa !7
  %neg237 = fneg double %129
  %131 = tail call double @llvm.fmuladd.f64(double %neg237, double %130, double %128)
  %132 = load double, double* %arrayidx94, align 8, !tbaa !7
  %133 = load double, double* %arrayidx154, align 8, !tbaa !7
  %neg242 = fneg double %132
  %134 = tail call double @llvm.fmuladd.f64(double %neg242, double %133, double %131)
  %135 = load double, double* %arrayidx99, align 8, !tbaa !7
  %136 = load double, double* %arrayidx159, align 8, !tbaa !7
  %neg247 = fneg double %135
  %137 = tail call double @llvm.fmuladd.f64(double %neg247, double %136, double %134)
  %138 = load double, double* %arrayidx104, align 8, !tbaa !7
  %139 = load double, double* %arrayidx164, align 8, !tbaa !7
  %neg252 = fneg double %138
  %140 = tail call double @llvm.fmuladd.f64(double %neg252, double %139, double %137)
  %141 = load double, double* %arrayidx109, align 8, !tbaa !7
  %142 = load double, double* %arrayidx169, align 8, !tbaa !7
  %neg257 = fneg double %141
  %143 = tail call double @llvm.fmuladd.f64(double %neg257, double %142, double %140)
  store double %143, double* %arrayidx232, align 8, !tbaa !7
  %arrayidx261 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 1, i64 4
  %144 = load double, double* %arrayidx261, align 8, !tbaa !7
  %145 = load double, double* %arrayidx118, align 8, !tbaa !7
  %146 = load double, double* %arrayidx149, align 8, !tbaa !7
  %neg266 = fneg double %145
  %147 = tail call double @llvm.fmuladd.f64(double %neg266, double %146, double %144)
  %148 = load double, double* %arrayidx123, align 8, !tbaa !7
  %149 = load double, double* %arrayidx154, align 8, !tbaa !7
  %neg271 = fneg double %148
  %150 = tail call double @llvm.fmuladd.f64(double %neg271, double %149, double %147)
  %151 = load double, double* %arrayidx128, align 8, !tbaa !7
  %152 = load double, double* %arrayidx159, align 8, !tbaa !7
  %neg276 = fneg double %151
  %153 = tail call double @llvm.fmuladd.f64(double %neg276, double %152, double %150)
  %154 = load double, double* %arrayidx133, align 8, !tbaa !7
  %155 = load double, double* %arrayidx164, align 8, !tbaa !7
  %neg281 = fneg double %154
  %156 = tail call double @llvm.fmuladd.f64(double %neg281, double %155, double %153)
  %157 = load double, double* %arrayidx138, align 8, !tbaa !7
  %158 = load double, double* %arrayidx169, align 8, !tbaa !7
  %neg286 = fneg double %157
  %159 = tail call double @llvm.fmuladd.f64(double %neg286, double %158, double %156)
  store double %159, double* %arrayidx261, align 8, !tbaa !7
  %arrayidx290 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 2, i64 0
  %160 = load double, double* %arrayidx290, align 8, !tbaa !7
  %161 = load double, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx294 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 2, i64 0
  %162 = load double, double* %arrayidx294, align 8, !tbaa !7
  %neg295 = fneg double %161
  %163 = tail call double @llvm.fmuladd.f64(double %neg295, double %162, double %160)
  %164 = load double, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx299 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 2, i64 1
  %165 = load double, double* %arrayidx299, align 8, !tbaa !7
  %neg300 = fneg double %164
  %166 = tail call double @llvm.fmuladd.f64(double %neg300, double %165, double %163)
  %167 = load double, double* %arrayidx12, align 8, !tbaa !7
  %arrayidx304 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 2, i64 2
  %168 = load double, double* %arrayidx304, align 8, !tbaa !7
  %neg305 = fneg double %167
  %169 = tail call double @llvm.fmuladd.f64(double %neg305, double %168, double %166)
  %170 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx309 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 2, i64 3
  %171 = load double, double* %arrayidx309, align 8, !tbaa !7
  %neg310 = fneg double %170
  %172 = tail call double @llvm.fmuladd.f64(double %neg310, double %171, double %169)
  %173 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx314 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 2, i64 4
  %174 = load double, double* %arrayidx314, align 8, !tbaa !7
  %neg315 = fneg double %173
  %175 = tail call double @llvm.fmuladd.f64(double %neg315, double %174, double %172)
  store double %175, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx319 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 2, i64 1
  %176 = load double, double* %arrayidx319, align 8, !tbaa !7
  %177 = load double, double* %arrayidx31, align 8, !tbaa !7
  %178 = load double, double* %arrayidx294, align 8, !tbaa !7
  %neg324 = fneg double %177
  %179 = tail call double @llvm.fmuladd.f64(double %neg324, double %178, double %176)
  %180 = load double, double* %arrayidx36, align 8, !tbaa !7
  %181 = load double, double* %arrayidx299, align 8, !tbaa !7
  %neg329 = fneg double %180
  %182 = tail call double @llvm.fmuladd.f64(double %neg329, double %181, double %179)
  %183 = load double, double* %arrayidx41, align 8, !tbaa !7
  %184 = load double, double* %arrayidx304, align 8, !tbaa !7
  %neg334 = fneg double %183
  %185 = tail call double @llvm.fmuladd.f64(double %neg334, double %184, double %182)
  %186 = load double, double* %arrayidx46, align 8, !tbaa !7
  %187 = load double, double* %arrayidx309, align 8, !tbaa !7
  %neg339 = fneg double %186
  %188 = tail call double @llvm.fmuladd.f64(double %neg339, double %187, double %185)
  %189 = load double, double* %arrayidx51, align 8, !tbaa !7
  %190 = load double, double* %arrayidx314, align 8, !tbaa !7
  %neg344 = fneg double %189
  %191 = tail call double @llvm.fmuladd.f64(double %neg344, double %190, double %188)
  store double %191, double* %arrayidx319, align 8, !tbaa !7
  %arrayidx348 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 2, i64 2
  %192 = load double, double* %arrayidx348, align 8, !tbaa !7
  %193 = load double, double* %arrayidx60, align 8, !tbaa !7
  %194 = load double, double* %arrayidx294, align 8, !tbaa !7
  %neg353 = fneg double %193
  %195 = tail call double @llvm.fmuladd.f64(double %neg353, double %194, double %192)
  %196 = load double, double* %arrayidx65, align 8, !tbaa !7
  %197 = load double, double* %arrayidx299, align 8, !tbaa !7
  %neg358 = fneg double %196
  %198 = tail call double @llvm.fmuladd.f64(double %neg358, double %197, double %195)
  %199 = load double, double* %arrayidx70, align 8, !tbaa !7
  %200 = load double, double* %arrayidx304, align 8, !tbaa !7
  %neg363 = fneg double %199
  %201 = tail call double @llvm.fmuladd.f64(double %neg363, double %200, double %198)
  %202 = load double, double* %arrayidx75, align 8, !tbaa !7
  %203 = load double, double* %arrayidx309, align 8, !tbaa !7
  %neg368 = fneg double %202
  %204 = tail call double @llvm.fmuladd.f64(double %neg368, double %203, double %201)
  %205 = load double, double* %arrayidx80, align 8, !tbaa !7
  %206 = load double, double* %arrayidx314, align 8, !tbaa !7
  %neg373 = fneg double %205
  %207 = tail call double @llvm.fmuladd.f64(double %neg373, double %206, double %204)
  store double %207, double* %arrayidx348, align 8, !tbaa !7
  %arrayidx377 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 2, i64 3
  %208 = load double, double* %arrayidx377, align 8, !tbaa !7
  %209 = load double, double* %arrayidx89, align 8, !tbaa !7
  %210 = load double, double* %arrayidx294, align 8, !tbaa !7
  %neg382 = fneg double %209
  %211 = tail call double @llvm.fmuladd.f64(double %neg382, double %210, double %208)
  %212 = load double, double* %arrayidx94, align 8, !tbaa !7
  %213 = load double, double* %arrayidx299, align 8, !tbaa !7
  %neg387 = fneg double %212
  %214 = tail call double @llvm.fmuladd.f64(double %neg387, double %213, double %211)
  %215 = load double, double* %arrayidx99, align 8, !tbaa !7
  %216 = load double, double* %arrayidx304, align 8, !tbaa !7
  %neg392 = fneg double %215
  %217 = tail call double @llvm.fmuladd.f64(double %neg392, double %216, double %214)
  %218 = load double, double* %arrayidx104, align 8, !tbaa !7
  %219 = load double, double* %arrayidx309, align 8, !tbaa !7
  %neg397 = fneg double %218
  %220 = tail call double @llvm.fmuladd.f64(double %neg397, double %219, double %217)
  %221 = load double, double* %arrayidx109, align 8, !tbaa !7
  %222 = load double, double* %arrayidx314, align 8, !tbaa !7
  %neg402 = fneg double %221
  %223 = tail call double @llvm.fmuladd.f64(double %neg402, double %222, double %220)
  store double %223, double* %arrayidx377, align 8, !tbaa !7
  %arrayidx406 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 2, i64 4
  %224 = load double, double* %arrayidx406, align 8, !tbaa !7
  %225 = load double, double* %arrayidx118, align 8, !tbaa !7
  %226 = load double, double* %arrayidx294, align 8, !tbaa !7
  %neg411 = fneg double %225
  %227 = tail call double @llvm.fmuladd.f64(double %neg411, double %226, double %224)
  %228 = load double, double* %arrayidx123, align 8, !tbaa !7
  %229 = load double, double* %arrayidx299, align 8, !tbaa !7
  %neg416 = fneg double %228
  %230 = tail call double @llvm.fmuladd.f64(double %neg416, double %229, double %227)
  %231 = load double, double* %arrayidx128, align 8, !tbaa !7
  %232 = load double, double* %arrayidx304, align 8, !tbaa !7
  %neg421 = fneg double %231
  %233 = tail call double @llvm.fmuladd.f64(double %neg421, double %232, double %230)
  %234 = load double, double* %arrayidx133, align 8, !tbaa !7
  %235 = load double, double* %arrayidx309, align 8, !tbaa !7
  %neg426 = fneg double %234
  %236 = tail call double @llvm.fmuladd.f64(double %neg426, double %235, double %233)
  %237 = load double, double* %arrayidx138, align 8, !tbaa !7
  %238 = load double, double* %arrayidx314, align 8, !tbaa !7
  %neg431 = fneg double %237
  %239 = tail call double @llvm.fmuladd.f64(double %neg431, double %238, double %236)
  store double %239, double* %arrayidx406, align 8, !tbaa !7
  %arrayidx435 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 3, i64 0
  %240 = load double, double* %arrayidx435, align 8, !tbaa !7
  %241 = load double, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx439 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 3, i64 0
  %242 = load double, double* %arrayidx439, align 8, !tbaa !7
  %neg440 = fneg double %241
  %243 = tail call double @llvm.fmuladd.f64(double %neg440, double %242, double %240)
  %244 = load double, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx444 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 3, i64 1
  %245 = load double, double* %arrayidx444, align 8, !tbaa !7
  %neg445 = fneg double %244
  %246 = tail call double @llvm.fmuladd.f64(double %neg445, double %245, double %243)
  %247 = load double, double* %arrayidx12, align 8, !tbaa !7
  %arrayidx449 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 3, i64 2
  %248 = load double, double* %arrayidx449, align 8, !tbaa !7
  %neg450 = fneg double %247
  %249 = tail call double @llvm.fmuladd.f64(double %neg450, double %248, double %246)
  %250 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx454 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 3, i64 3
  %251 = load double, double* %arrayidx454, align 8, !tbaa !7
  %neg455 = fneg double %250
  %252 = tail call double @llvm.fmuladd.f64(double %neg455, double %251, double %249)
  %253 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx459 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 3, i64 4
  %254 = load double, double* %arrayidx459, align 8, !tbaa !7
  %neg460 = fneg double %253
  %255 = tail call double @llvm.fmuladd.f64(double %neg460, double %254, double %252)
  store double %255, double* %arrayidx435, align 8, !tbaa !7
  %arrayidx464 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 3, i64 1
  %256 = load double, double* %arrayidx464, align 8, !tbaa !7
  %257 = load double, double* %arrayidx31, align 8, !tbaa !7
  %258 = load double, double* %arrayidx439, align 8, !tbaa !7
  %neg469 = fneg double %257
  %259 = tail call double @llvm.fmuladd.f64(double %neg469, double %258, double %256)
  %260 = load double, double* %arrayidx36, align 8, !tbaa !7
  %261 = load double, double* %arrayidx444, align 8, !tbaa !7
  %neg474 = fneg double %260
  %262 = tail call double @llvm.fmuladd.f64(double %neg474, double %261, double %259)
  %263 = load double, double* %arrayidx41, align 8, !tbaa !7
  %264 = load double, double* %arrayidx449, align 8, !tbaa !7
  %neg479 = fneg double %263
  %265 = tail call double @llvm.fmuladd.f64(double %neg479, double %264, double %262)
  %266 = load double, double* %arrayidx46, align 8, !tbaa !7
  %267 = load double, double* %arrayidx454, align 8, !tbaa !7
  %neg484 = fneg double %266
  %268 = tail call double @llvm.fmuladd.f64(double %neg484, double %267, double %265)
  %269 = load double, double* %arrayidx51, align 8, !tbaa !7
  %270 = load double, double* %arrayidx459, align 8, !tbaa !7
  %neg489 = fneg double %269
  %271 = tail call double @llvm.fmuladd.f64(double %neg489, double %270, double %268)
  store double %271, double* %arrayidx464, align 8, !tbaa !7
  %arrayidx493 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 3, i64 2
  %272 = load double, double* %arrayidx493, align 8, !tbaa !7
  %273 = load double, double* %arrayidx60, align 8, !tbaa !7
  %274 = load double, double* %arrayidx439, align 8, !tbaa !7
  %neg498 = fneg double %273
  %275 = tail call double @llvm.fmuladd.f64(double %neg498, double %274, double %272)
  %276 = load double, double* %arrayidx65, align 8, !tbaa !7
  %277 = load double, double* %arrayidx444, align 8, !tbaa !7
  %neg503 = fneg double %276
  %278 = tail call double @llvm.fmuladd.f64(double %neg503, double %277, double %275)
  %279 = load double, double* %arrayidx70, align 8, !tbaa !7
  %280 = load double, double* %arrayidx449, align 8, !tbaa !7
  %neg508 = fneg double %279
  %281 = tail call double @llvm.fmuladd.f64(double %neg508, double %280, double %278)
  %282 = load double, double* %arrayidx75, align 8, !tbaa !7
  %283 = load double, double* %arrayidx454, align 8, !tbaa !7
  %neg513 = fneg double %282
  %284 = tail call double @llvm.fmuladd.f64(double %neg513, double %283, double %281)
  %285 = load double, double* %arrayidx80, align 8, !tbaa !7
  %286 = load double, double* %arrayidx459, align 8, !tbaa !7
  %neg518 = fneg double %285
  %287 = tail call double @llvm.fmuladd.f64(double %neg518, double %286, double %284)
  store double %287, double* %arrayidx493, align 8, !tbaa !7
  %arrayidx522 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 3, i64 3
  %288 = load double, double* %arrayidx522, align 8, !tbaa !7
  %289 = load double, double* %arrayidx89, align 8, !tbaa !7
  %290 = load double, double* %arrayidx439, align 8, !tbaa !7
  %neg527 = fneg double %289
  %291 = tail call double @llvm.fmuladd.f64(double %neg527, double %290, double %288)
  %292 = load double, double* %arrayidx94, align 8, !tbaa !7
  %293 = load double, double* %arrayidx444, align 8, !tbaa !7
  %neg532 = fneg double %292
  %294 = tail call double @llvm.fmuladd.f64(double %neg532, double %293, double %291)
  %295 = load double, double* %arrayidx99, align 8, !tbaa !7
  %296 = load double, double* %arrayidx449, align 8, !tbaa !7
  %neg537 = fneg double %295
  %297 = tail call double @llvm.fmuladd.f64(double %neg537, double %296, double %294)
  %298 = load double, double* %arrayidx104, align 8, !tbaa !7
  %299 = load double, double* %arrayidx454, align 8, !tbaa !7
  %neg542 = fneg double %298
  %300 = tail call double @llvm.fmuladd.f64(double %neg542, double %299, double %297)
  %301 = load double, double* %arrayidx109, align 8, !tbaa !7
  %302 = load double, double* %arrayidx459, align 8, !tbaa !7
  %neg547 = fneg double %301
  %303 = tail call double @llvm.fmuladd.f64(double %neg547, double %302, double %300)
  store double %303, double* %arrayidx522, align 8, !tbaa !7
  %arrayidx551 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 3, i64 4
  %304 = load double, double* %arrayidx551, align 8, !tbaa !7
  %305 = load double, double* %arrayidx118, align 8, !tbaa !7
  %306 = load double, double* %arrayidx439, align 8, !tbaa !7
  %neg556 = fneg double %305
  %307 = tail call double @llvm.fmuladd.f64(double %neg556, double %306, double %304)
  %308 = load double, double* %arrayidx123, align 8, !tbaa !7
  %309 = load double, double* %arrayidx444, align 8, !tbaa !7
  %neg561 = fneg double %308
  %310 = tail call double @llvm.fmuladd.f64(double %neg561, double %309, double %307)
  %311 = load double, double* %arrayidx128, align 8, !tbaa !7
  %312 = load double, double* %arrayidx449, align 8, !tbaa !7
  %neg566 = fneg double %311
  %313 = tail call double @llvm.fmuladd.f64(double %neg566, double %312, double %310)
  %314 = load double, double* %arrayidx133, align 8, !tbaa !7
  %315 = load double, double* %arrayidx454, align 8, !tbaa !7
  %neg571 = fneg double %314
  %316 = tail call double @llvm.fmuladd.f64(double %neg571, double %315, double %313)
  %317 = load double, double* %arrayidx138, align 8, !tbaa !7
  %318 = load double, double* %arrayidx459, align 8, !tbaa !7
  %neg576 = fneg double %317
  %319 = tail call double @llvm.fmuladd.f64(double %neg576, double %318, double %316)
  store double %319, double* %arrayidx551, align 8, !tbaa !7
  %arrayidx580 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 4, i64 0
  %320 = load double, double* %arrayidx580, align 8, !tbaa !7
  %321 = load double, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx584 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 4, i64 0
  %322 = load double, double* %arrayidx584, align 8, !tbaa !7
  %neg585 = fneg double %321
  %323 = tail call double @llvm.fmuladd.f64(double %neg585, double %322, double %320)
  %324 = load double, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx589 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 4, i64 1
  %325 = load double, double* %arrayidx589, align 8, !tbaa !7
  %neg590 = fneg double %324
  %326 = tail call double @llvm.fmuladd.f64(double %neg590, double %325, double %323)
  %327 = load double, double* %arrayidx12, align 8, !tbaa !7
  %arrayidx594 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 4, i64 2
  %328 = load double, double* %arrayidx594, align 8, !tbaa !7
  %neg595 = fneg double %327
  %329 = tail call double @llvm.fmuladd.f64(double %neg595, double %328, double %326)
  %330 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx599 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 4, i64 3
  %331 = load double, double* %arrayidx599, align 8, !tbaa !7
  %neg600 = fneg double %330
  %332 = tail call double @llvm.fmuladd.f64(double %neg600, double %331, double %329)
  %333 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx604 = getelementptr inbounds [5 x double], [5 x double]* %bblock, i64 4, i64 4
  %334 = load double, double* %arrayidx604, align 8, !tbaa !7
  %neg605 = fneg double %333
  %335 = tail call double @llvm.fmuladd.f64(double %neg605, double %334, double %332)
  store double %335, double* %arrayidx580, align 8, !tbaa !7
  %arrayidx609 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 4, i64 1
  %336 = load double, double* %arrayidx609, align 8, !tbaa !7
  %337 = load double, double* %arrayidx31, align 8, !tbaa !7
  %338 = load double, double* %arrayidx584, align 8, !tbaa !7
  %neg614 = fneg double %337
  %339 = tail call double @llvm.fmuladd.f64(double %neg614, double %338, double %336)
  %340 = load double, double* %arrayidx36, align 8, !tbaa !7
  %341 = load double, double* %arrayidx589, align 8, !tbaa !7
  %neg619 = fneg double %340
  %342 = tail call double @llvm.fmuladd.f64(double %neg619, double %341, double %339)
  %343 = load double, double* %arrayidx41, align 8, !tbaa !7
  %344 = load double, double* %arrayidx594, align 8, !tbaa !7
  %neg624 = fneg double %343
  %345 = tail call double @llvm.fmuladd.f64(double %neg624, double %344, double %342)
  %346 = load double, double* %arrayidx46, align 8, !tbaa !7
  %347 = load double, double* %arrayidx599, align 8, !tbaa !7
  %neg629 = fneg double %346
  %348 = tail call double @llvm.fmuladd.f64(double %neg629, double %347, double %345)
  %349 = load double, double* %arrayidx51, align 8, !tbaa !7
  %350 = load double, double* %arrayidx604, align 8, !tbaa !7
  %neg634 = fneg double %349
  %351 = tail call double @llvm.fmuladd.f64(double %neg634, double %350, double %348)
  store double %351, double* %arrayidx609, align 8, !tbaa !7
  %arrayidx638 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 4, i64 2
  %352 = load double, double* %arrayidx638, align 8, !tbaa !7
  %353 = load double, double* %arrayidx60, align 8, !tbaa !7
  %354 = load double, double* %arrayidx584, align 8, !tbaa !7
  %neg643 = fneg double %353
  %355 = tail call double @llvm.fmuladd.f64(double %neg643, double %354, double %352)
  %356 = load double, double* %arrayidx65, align 8, !tbaa !7
  %357 = load double, double* %arrayidx589, align 8, !tbaa !7
  %neg648 = fneg double %356
  %358 = tail call double @llvm.fmuladd.f64(double %neg648, double %357, double %355)
  %359 = load double, double* %arrayidx70, align 8, !tbaa !7
  %360 = load double, double* %arrayidx594, align 8, !tbaa !7
  %neg653 = fneg double %359
  %361 = tail call double @llvm.fmuladd.f64(double %neg653, double %360, double %358)
  %362 = load double, double* %arrayidx75, align 8, !tbaa !7
  %363 = load double, double* %arrayidx599, align 8, !tbaa !7
  %neg658 = fneg double %362
  %364 = tail call double @llvm.fmuladd.f64(double %neg658, double %363, double %361)
  %365 = load double, double* %arrayidx80, align 8, !tbaa !7
  %366 = load double, double* %arrayidx604, align 8, !tbaa !7
  %neg663 = fneg double %365
  %367 = tail call double @llvm.fmuladd.f64(double %neg663, double %366, double %364)
  store double %367, double* %arrayidx638, align 8, !tbaa !7
  %arrayidx667 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 4, i64 3
  %368 = load double, double* %arrayidx667, align 8, !tbaa !7
  %369 = load double, double* %arrayidx89, align 8, !tbaa !7
  %370 = load double, double* %arrayidx584, align 8, !tbaa !7
  %neg672 = fneg double %369
  %371 = tail call double @llvm.fmuladd.f64(double %neg672, double %370, double %368)
  %372 = load double, double* %arrayidx94, align 8, !tbaa !7
  %373 = load double, double* %arrayidx589, align 8, !tbaa !7
  %neg677 = fneg double %372
  %374 = tail call double @llvm.fmuladd.f64(double %neg677, double %373, double %371)
  %375 = load double, double* %arrayidx99, align 8, !tbaa !7
  %376 = load double, double* %arrayidx594, align 8, !tbaa !7
  %neg682 = fneg double %375
  %377 = tail call double @llvm.fmuladd.f64(double %neg682, double %376, double %374)
  %378 = load double, double* %arrayidx104, align 8, !tbaa !7
  %379 = load double, double* %arrayidx599, align 8, !tbaa !7
  %neg687 = fneg double %378
  %380 = tail call double @llvm.fmuladd.f64(double %neg687, double %379, double %377)
  %381 = load double, double* %arrayidx109, align 8, !tbaa !7
  %382 = load double, double* %arrayidx604, align 8, !tbaa !7
  %neg692 = fneg double %381
  %383 = tail call double @llvm.fmuladd.f64(double %neg692, double %382, double %380)
  store double %383, double* %arrayidx667, align 8, !tbaa !7
  %arrayidx696 = getelementptr inbounds [5 x double], [5 x double]* %cblock, i64 4, i64 4
  %384 = load double, double* %arrayidx696, align 8, !tbaa !7
  %385 = load double, double* %arrayidx118, align 8, !tbaa !7
  %386 = load double, double* %arrayidx584, align 8, !tbaa !7
  %neg701 = fneg double %385
  %387 = tail call double @llvm.fmuladd.f64(double %neg701, double %386, double %384)
  %388 = load double, double* %arrayidx123, align 8, !tbaa !7
  %389 = load double, double* %arrayidx589, align 8, !tbaa !7
  %neg706 = fneg double %388
  %390 = tail call double @llvm.fmuladd.f64(double %neg706, double %389, double %387)
  %391 = load double, double* %arrayidx128, align 8, !tbaa !7
  %392 = load double, double* %arrayidx594, align 8, !tbaa !7
  %neg711 = fneg double %391
  %393 = tail call double @llvm.fmuladd.f64(double %neg711, double %392, double %390)
  %394 = load double, double* %arrayidx133, align 8, !tbaa !7
  %395 = load double, double* %arrayidx599, align 8, !tbaa !7
  %neg716 = fneg double %394
  %396 = tail call double @llvm.fmuladd.f64(double %neg716, double %395, double %393)
  %397 = load double, double* %arrayidx138, align 8, !tbaa !7
  %398 = load double, double* %arrayidx604, align 8, !tbaa !7
  %neg721 = fneg double %397
  %399 = tail call double @llvm.fmuladd.f64(double %neg721, double %398, double %396)
  store double %399, double* %arrayidx696, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @p_binvcrhs([5 x double]* %lhs, [5 x double]* %c, double* nocapture %r) local_unnamed_addr #4 {
entry:
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 0
  %0 = load double, double* %arrayidx1, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %0
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 0
  %1 = load double, double* %arrayidx3, align 8, !tbaa !7
  %mul = fmul double %1, %div
  store double %mul, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 0
  %2 = load double, double* %arrayidx7, align 8, !tbaa !7
  %mul8 = fmul double %div, %2
  store double %mul8, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 0
  %3 = load double, double* %arrayidx12, align 8, !tbaa !7
  %mul13 = fmul double %div, %3
  store double %mul13, double* %arrayidx12, align 8, !tbaa !7
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 0
  %4 = load double, double* %arrayidx17, align 8, !tbaa !7
  %mul18 = fmul double %div, %4
  store double %mul18, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx22 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 0, i64 0
  %5 = load double, double* %arrayidx22, align 8, !tbaa !7
  %mul23 = fmul double %div, %5
  store double %mul23, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 1, i64 0
  %6 = load double, double* %arrayidx27, align 8, !tbaa !7
  %mul28 = fmul double %div, %6
  store double %mul28, double* %arrayidx27, align 8, !tbaa !7
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 2, i64 0
  %7 = load double, double* %arrayidx32, align 8, !tbaa !7
  %mul33 = fmul double %div, %7
  store double %mul33, double* %arrayidx32, align 8, !tbaa !7
  %arrayidx37 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 3, i64 0
  %8 = load double, double* %arrayidx37, align 8, !tbaa !7
  %mul38 = fmul double %div, %8
  store double %mul38, double* %arrayidx37, align 8, !tbaa !7
  %arrayidx42 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 4, i64 0
  %9 = load double, double* %arrayidx42, align 8, !tbaa !7
  %mul43 = fmul double %div, %9
  store double %mul43, double* %arrayidx42, align 8, !tbaa !7
  %10 = load double, double* %r, align 8, !tbaa !7
  %mul47 = fmul double %div, %10
  store double %mul47, double* %r, align 8, !tbaa !7
  %arrayidx50 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 1
  %11 = load double, double* %arrayidx50, align 8, !tbaa !7
  %arrayidx52 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 1
  %12 = load double, double* %arrayidx52, align 8, !tbaa !7
  %13 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg = fneg double %11
  %14 = tail call double @llvm.fmuladd.f64(double %neg, double %13, double %12)
  store double %14, double* %arrayidx52, align 8, !tbaa !7
  %arrayidx59 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 1
  %15 = load double, double* %arrayidx59, align 8, !tbaa !7
  %16 = load double, double* %arrayidx7, align 8, !tbaa !7
  %17 = tail call double @llvm.fmuladd.f64(double %neg, double %16, double %15)
  store double %17, double* %arrayidx59, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 1
  %18 = load double, double* %arrayidx67, align 8, !tbaa !7
  %19 = load double, double* %arrayidx12, align 8, !tbaa !7
  %20 = tail call double @llvm.fmuladd.f64(double %neg, double %19, double %18)
  store double %20, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 1
  %21 = load double, double* %arrayidx75, align 8, !tbaa !7
  %22 = load double, double* %arrayidx17, align 8, !tbaa !7
  %23 = tail call double @llvm.fmuladd.f64(double %neg, double %22, double %21)
  store double %23, double* %arrayidx75, align 8, !tbaa !7
  %arrayidx83 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 0, i64 1
  %24 = load double, double* %arrayidx83, align 8, !tbaa !7
  %25 = load double, double* %arrayidx22, align 8, !tbaa !7
  %26 = tail call double @llvm.fmuladd.f64(double %neg, double %25, double %24)
  store double %26, double* %arrayidx83, align 8, !tbaa !7
  %arrayidx91 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 1, i64 1
  %27 = load double, double* %arrayidx91, align 8, !tbaa !7
  %28 = load double, double* %arrayidx27, align 8, !tbaa !7
  %29 = tail call double @llvm.fmuladd.f64(double %neg, double %28, double %27)
  store double %29, double* %arrayidx91, align 8, !tbaa !7
  %arrayidx99 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 2, i64 1
  %30 = load double, double* %arrayidx99, align 8, !tbaa !7
  %31 = load double, double* %arrayidx32, align 8, !tbaa !7
  %32 = tail call double @llvm.fmuladd.f64(double %neg, double %31, double %30)
  store double %32, double* %arrayidx99, align 8, !tbaa !7
  %arrayidx107 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 3, i64 1
  %33 = load double, double* %arrayidx107, align 8, !tbaa !7
  %34 = load double, double* %arrayidx37, align 8, !tbaa !7
  %35 = tail call double @llvm.fmuladd.f64(double %neg, double %34, double %33)
  store double %35, double* %arrayidx107, align 8, !tbaa !7
  %arrayidx115 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 4, i64 1
  %36 = load double, double* %arrayidx115, align 8, !tbaa !7
  %37 = load double, double* %arrayidx42, align 8, !tbaa !7
  %38 = tail call double @llvm.fmuladd.f64(double %neg, double %37, double %36)
  store double %38, double* %arrayidx115, align 8, !tbaa !7
  %arrayidx122 = getelementptr inbounds double, double* %r, i64 1
  %39 = load double, double* %arrayidx122, align 8, !tbaa !7
  %40 = load double, double* %r, align 8, !tbaa !7
  %41 = tail call double @llvm.fmuladd.f64(double %neg, double %40, double %39)
  store double %41, double* %arrayidx122, align 8, !tbaa !7
  %arrayidx128 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 2
  %42 = load double, double* %arrayidx128, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 2
  %43 = load double, double* %arrayidx130, align 8, !tbaa !7
  %44 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg134 = fneg double %42
  %45 = tail call double @llvm.fmuladd.f64(double %neg134, double %44, double %43)
  store double %45, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx138 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 2
  %46 = load double, double* %arrayidx138, align 8, !tbaa !7
  %47 = load double, double* %arrayidx7, align 8, !tbaa !7
  %48 = tail call double @llvm.fmuladd.f64(double %neg134, double %47, double %46)
  store double %48, double* %arrayidx138, align 8, !tbaa !7
  %arrayidx146 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 2
  %49 = load double, double* %arrayidx146, align 8, !tbaa !7
  %50 = load double, double* %arrayidx12, align 8, !tbaa !7
  %51 = tail call double @llvm.fmuladd.f64(double %neg134, double %50, double %49)
  store double %51, double* %arrayidx146, align 8, !tbaa !7
  %arrayidx154 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 2
  %52 = load double, double* %arrayidx154, align 8, !tbaa !7
  %53 = load double, double* %arrayidx17, align 8, !tbaa !7
  %54 = tail call double @llvm.fmuladd.f64(double %neg134, double %53, double %52)
  store double %54, double* %arrayidx154, align 8, !tbaa !7
  %arrayidx162 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 0, i64 2
  %55 = load double, double* %arrayidx162, align 8, !tbaa !7
  %56 = load double, double* %arrayidx22, align 8, !tbaa !7
  %57 = tail call double @llvm.fmuladd.f64(double %neg134, double %56, double %55)
  store double %57, double* %arrayidx162, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 1, i64 2
  %58 = load double, double* %arrayidx170, align 8, !tbaa !7
  %59 = load double, double* %arrayidx27, align 8, !tbaa !7
  %60 = tail call double @llvm.fmuladd.f64(double %neg134, double %59, double %58)
  store double %60, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx178 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 2, i64 2
  %61 = load double, double* %arrayidx178, align 8, !tbaa !7
  %62 = load double, double* %arrayidx32, align 8, !tbaa !7
  %63 = tail call double @llvm.fmuladd.f64(double %neg134, double %62, double %61)
  store double %63, double* %arrayidx178, align 8, !tbaa !7
  %arrayidx186 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 3, i64 2
  %64 = load double, double* %arrayidx186, align 8, !tbaa !7
  %65 = load double, double* %arrayidx37, align 8, !tbaa !7
  %66 = tail call double @llvm.fmuladd.f64(double %neg134, double %65, double %64)
  store double %66, double* %arrayidx186, align 8, !tbaa !7
  %arrayidx194 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 4, i64 2
  %67 = load double, double* %arrayidx194, align 8, !tbaa !7
  %68 = load double, double* %arrayidx42, align 8, !tbaa !7
  %69 = tail call double @llvm.fmuladd.f64(double %neg134, double %68, double %67)
  store double %69, double* %arrayidx194, align 8, !tbaa !7
  %arrayidx201 = getelementptr inbounds double, double* %r, i64 2
  %70 = load double, double* %arrayidx201, align 8, !tbaa !7
  %71 = load double, double* %r, align 8, !tbaa !7
  %72 = tail call double @llvm.fmuladd.f64(double %neg134, double %71, double %70)
  store double %72, double* %arrayidx201, align 8, !tbaa !7
  %arrayidx207 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 3
  %73 = load double, double* %arrayidx207, align 8, !tbaa !7
  %arrayidx209 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 3
  %74 = load double, double* %arrayidx209, align 8, !tbaa !7
  %75 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg213 = fneg double %73
  %76 = tail call double @llvm.fmuladd.f64(double %neg213, double %75, double %74)
  store double %76, double* %arrayidx209, align 8, !tbaa !7
  %arrayidx217 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 3
  %77 = load double, double* %arrayidx217, align 8, !tbaa !7
  %78 = load double, double* %arrayidx7, align 8, !tbaa !7
  %79 = tail call double @llvm.fmuladd.f64(double %neg213, double %78, double %77)
  store double %79, double* %arrayidx217, align 8, !tbaa !7
  %arrayidx225 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 3
  %80 = load double, double* %arrayidx225, align 8, !tbaa !7
  %81 = load double, double* %arrayidx12, align 8, !tbaa !7
  %82 = tail call double @llvm.fmuladd.f64(double %neg213, double %81, double %80)
  store double %82, double* %arrayidx225, align 8, !tbaa !7
  %arrayidx233 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 3
  %83 = load double, double* %arrayidx233, align 8, !tbaa !7
  %84 = load double, double* %arrayidx17, align 8, !tbaa !7
  %85 = tail call double @llvm.fmuladd.f64(double %neg213, double %84, double %83)
  store double %85, double* %arrayidx233, align 8, !tbaa !7
  %arrayidx241 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 0, i64 3
  %86 = load double, double* %arrayidx241, align 8, !tbaa !7
  %87 = load double, double* %arrayidx22, align 8, !tbaa !7
  %88 = tail call double @llvm.fmuladd.f64(double %neg213, double %87, double %86)
  store double %88, double* %arrayidx241, align 8, !tbaa !7
  %arrayidx249 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 1, i64 3
  %89 = load double, double* %arrayidx249, align 8, !tbaa !7
  %90 = load double, double* %arrayidx27, align 8, !tbaa !7
  %91 = tail call double @llvm.fmuladd.f64(double %neg213, double %90, double %89)
  store double %91, double* %arrayidx249, align 8, !tbaa !7
  %arrayidx257 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 2, i64 3
  %92 = load double, double* %arrayidx257, align 8, !tbaa !7
  %93 = load double, double* %arrayidx32, align 8, !tbaa !7
  %94 = tail call double @llvm.fmuladd.f64(double %neg213, double %93, double %92)
  store double %94, double* %arrayidx257, align 8, !tbaa !7
  %arrayidx265 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 3, i64 3
  %95 = load double, double* %arrayidx265, align 8, !tbaa !7
  %96 = load double, double* %arrayidx37, align 8, !tbaa !7
  %97 = tail call double @llvm.fmuladd.f64(double %neg213, double %96, double %95)
  store double %97, double* %arrayidx265, align 8, !tbaa !7
  %arrayidx273 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 4, i64 3
  %98 = load double, double* %arrayidx273, align 8, !tbaa !7
  %99 = load double, double* %arrayidx42, align 8, !tbaa !7
  %100 = tail call double @llvm.fmuladd.f64(double %neg213, double %99, double %98)
  store double %100, double* %arrayidx273, align 8, !tbaa !7
  %arrayidx280 = getelementptr inbounds double, double* %r, i64 3
  %101 = load double, double* %arrayidx280, align 8, !tbaa !7
  %102 = load double, double* %r, align 8, !tbaa !7
  %103 = tail call double @llvm.fmuladd.f64(double %neg213, double %102, double %101)
  store double %103, double* %arrayidx280, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 4
  %104 = load double, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx288 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 4
  %105 = load double, double* %arrayidx288, align 8, !tbaa !7
  %106 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg292 = fneg double %104
  %107 = tail call double @llvm.fmuladd.f64(double %neg292, double %106, double %105)
  store double %107, double* %arrayidx288, align 8, !tbaa !7
  %arrayidx296 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 4
  %108 = load double, double* %arrayidx296, align 8, !tbaa !7
  %109 = load double, double* %arrayidx7, align 8, !tbaa !7
  %110 = tail call double @llvm.fmuladd.f64(double %neg292, double %109, double %108)
  store double %110, double* %arrayidx296, align 8, !tbaa !7
  %arrayidx304 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 4
  %111 = load double, double* %arrayidx304, align 8, !tbaa !7
  %112 = load double, double* %arrayidx12, align 8, !tbaa !7
  %113 = tail call double @llvm.fmuladd.f64(double %neg292, double %112, double %111)
  store double %113, double* %arrayidx304, align 8, !tbaa !7
  %arrayidx312 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 4
  %114 = load double, double* %arrayidx312, align 8, !tbaa !7
  %115 = load double, double* %arrayidx17, align 8, !tbaa !7
  %116 = tail call double @llvm.fmuladd.f64(double %neg292, double %115, double %114)
  store double %116, double* %arrayidx312, align 8, !tbaa !7
  %arrayidx320 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 0, i64 4
  %117 = load double, double* %arrayidx320, align 8, !tbaa !7
  %118 = load double, double* %arrayidx22, align 8, !tbaa !7
  %119 = tail call double @llvm.fmuladd.f64(double %neg292, double %118, double %117)
  store double %119, double* %arrayidx320, align 8, !tbaa !7
  %arrayidx328 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 1, i64 4
  %120 = load double, double* %arrayidx328, align 8, !tbaa !7
  %121 = load double, double* %arrayidx27, align 8, !tbaa !7
  %122 = tail call double @llvm.fmuladd.f64(double %neg292, double %121, double %120)
  store double %122, double* %arrayidx328, align 8, !tbaa !7
  %arrayidx336 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 2, i64 4
  %123 = load double, double* %arrayidx336, align 8, !tbaa !7
  %124 = load double, double* %arrayidx32, align 8, !tbaa !7
  %125 = tail call double @llvm.fmuladd.f64(double %neg292, double %124, double %123)
  store double %125, double* %arrayidx336, align 8, !tbaa !7
  %arrayidx344 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 3, i64 4
  %126 = load double, double* %arrayidx344, align 8, !tbaa !7
  %127 = load double, double* %arrayidx37, align 8, !tbaa !7
  %128 = tail call double @llvm.fmuladd.f64(double %neg292, double %127, double %126)
  store double %128, double* %arrayidx344, align 8, !tbaa !7
  %arrayidx352 = getelementptr inbounds [5 x double], [5 x double]* %c, i64 4, i64 4
  %129 = load double, double* %arrayidx352, align 8, !tbaa !7
  %130 = load double, double* %arrayidx42, align 8, !tbaa !7
  %131 = tail call double @llvm.fmuladd.f64(double %neg292, double %130, double %129)
  store double %131, double* %arrayidx352, align 8, !tbaa !7
  %arrayidx359 = getelementptr inbounds double, double* %r, i64 4
  %132 = load double, double* %arrayidx359, align 8, !tbaa !7
  %133 = load double, double* %r, align 8, !tbaa !7
  %134 = tail call double @llvm.fmuladd.f64(double %neg292, double %133, double %132)
  store double %134, double* %arrayidx359, align 8, !tbaa !7
  %135 = load double, double* %arrayidx52, align 8, !tbaa !7
  %div366 = fdiv double 1.000000e+00, %135
  %136 = load double, double* %arrayidx59, align 8, !tbaa !7
  %mul369 = fmul double %136, %div366
  store double %mul369, double* %arrayidx59, align 8, !tbaa !7
  %137 = load double, double* %arrayidx67, align 8, !tbaa !7
  %mul374 = fmul double %div366, %137
  store double %mul374, double* %arrayidx67, align 8, !tbaa !7
  %138 = load double, double* %arrayidx75, align 8, !tbaa !7
  %mul379 = fmul double %div366, %138
  store double %mul379, double* %arrayidx75, align 8, !tbaa !7
  %139 = load double, double* %arrayidx83, align 8, !tbaa !7
  %mul384 = fmul double %div366, %139
  store double %mul384, double* %arrayidx83, align 8, !tbaa !7
  %140 = load double, double* %arrayidx91, align 8, !tbaa !7
  %mul389 = fmul double %div366, %140
  store double %mul389, double* %arrayidx91, align 8, !tbaa !7
  %141 = load double, double* %arrayidx99, align 8, !tbaa !7
  %mul394 = fmul double %div366, %141
  store double %mul394, double* %arrayidx99, align 8, !tbaa !7
  %142 = load double, double* %arrayidx107, align 8, !tbaa !7
  %mul399 = fmul double %div366, %142
  store double %mul399, double* %arrayidx107, align 8, !tbaa !7
  %143 = load double, double* %arrayidx115, align 8, !tbaa !7
  %mul404 = fmul double %div366, %143
  store double %mul404, double* %arrayidx115, align 8, !tbaa !7
  %144 = load double, double* %arrayidx122, align 8, !tbaa !7
  %mul408 = fmul double %div366, %144
  store double %mul408, double* %arrayidx122, align 8, !tbaa !7
  %145 = load double, double* %arrayidx3, align 8, !tbaa !7
  %146 = load double, double* %arrayidx7, align 8, !tbaa !7
  %147 = load double, double* %arrayidx59, align 8, !tbaa !7
  %neg417 = fneg double %145
  %148 = tail call double @llvm.fmuladd.f64(double %neg417, double %147, double %146)
  store double %148, double* %arrayidx7, align 8, !tbaa !7
  %149 = load double, double* %arrayidx12, align 8, !tbaa !7
  %150 = load double, double* %arrayidx67, align 8, !tbaa !7
  %151 = tail call double @llvm.fmuladd.f64(double %neg417, double %150, double %149)
  store double %151, double* %arrayidx12, align 8, !tbaa !7
  %152 = load double, double* %arrayidx17, align 8, !tbaa !7
  %153 = load double, double* %arrayidx75, align 8, !tbaa !7
  %154 = tail call double @llvm.fmuladd.f64(double %neg417, double %153, double %152)
  store double %154, double* %arrayidx17, align 8, !tbaa !7
  %155 = load double, double* %arrayidx22, align 8, !tbaa !7
  %156 = load double, double* %arrayidx83, align 8, !tbaa !7
  %157 = tail call double @llvm.fmuladd.f64(double %neg417, double %156, double %155)
  store double %157, double* %arrayidx22, align 8, !tbaa !7
  %158 = load double, double* %arrayidx27, align 8, !tbaa !7
  %159 = load double, double* %arrayidx91, align 8, !tbaa !7
  %160 = tail call double @llvm.fmuladd.f64(double %neg417, double %159, double %158)
  store double %160, double* %arrayidx27, align 8, !tbaa !7
  %161 = load double, double* %arrayidx32, align 8, !tbaa !7
  %162 = load double, double* %arrayidx99, align 8, !tbaa !7
  %163 = tail call double @llvm.fmuladd.f64(double %neg417, double %162, double %161)
  store double %163, double* %arrayidx32, align 8, !tbaa !7
  %164 = load double, double* %arrayidx37, align 8, !tbaa !7
  %165 = load double, double* %arrayidx107, align 8, !tbaa !7
  %166 = tail call double @llvm.fmuladd.f64(double %neg417, double %165, double %164)
  store double %166, double* %arrayidx37, align 8, !tbaa !7
  %167 = load double, double* %arrayidx42, align 8, !tbaa !7
  %168 = load double, double* %arrayidx115, align 8, !tbaa !7
  %169 = tail call double @llvm.fmuladd.f64(double %neg417, double %168, double %167)
  store double %169, double* %arrayidx42, align 8, !tbaa !7
  %170 = load double, double* %r, align 8, !tbaa !7
  %171 = load double, double* %arrayidx122, align 8, !tbaa !7
  %172 = tail call double @llvm.fmuladd.f64(double %neg417, double %171, double %170)
  store double %172, double* %r, align 8, !tbaa !7
  %173 = load double, double* %arrayidx130, align 8, !tbaa !7
  %174 = load double, double* %arrayidx138, align 8, !tbaa !7
  %175 = load double, double* %arrayidx59, align 8, !tbaa !7
  %neg488 = fneg double %173
  %176 = tail call double @llvm.fmuladd.f64(double %neg488, double %175, double %174)
  store double %176, double* %arrayidx138, align 8, !tbaa !7
  %177 = load double, double* %arrayidx146, align 8, !tbaa !7
  %178 = load double, double* %arrayidx67, align 8, !tbaa !7
  %179 = tail call double @llvm.fmuladd.f64(double %neg488, double %178, double %177)
  store double %179, double* %arrayidx146, align 8, !tbaa !7
  %180 = load double, double* %arrayidx154, align 8, !tbaa !7
  %181 = load double, double* %arrayidx75, align 8, !tbaa !7
  %182 = tail call double @llvm.fmuladd.f64(double %neg488, double %181, double %180)
  store double %182, double* %arrayidx154, align 8, !tbaa !7
  %183 = load double, double* %arrayidx162, align 8, !tbaa !7
  %184 = load double, double* %arrayidx83, align 8, !tbaa !7
  %185 = tail call double @llvm.fmuladd.f64(double %neg488, double %184, double %183)
  store double %185, double* %arrayidx162, align 8, !tbaa !7
  %186 = load double, double* %arrayidx170, align 8, !tbaa !7
  %187 = load double, double* %arrayidx91, align 8, !tbaa !7
  %188 = tail call double @llvm.fmuladd.f64(double %neg488, double %187, double %186)
  store double %188, double* %arrayidx170, align 8, !tbaa !7
  %189 = load double, double* %arrayidx178, align 8, !tbaa !7
  %190 = load double, double* %arrayidx99, align 8, !tbaa !7
  %191 = tail call double @llvm.fmuladd.f64(double %neg488, double %190, double %189)
  store double %191, double* %arrayidx178, align 8, !tbaa !7
  %192 = load double, double* %arrayidx186, align 8, !tbaa !7
  %193 = load double, double* %arrayidx107, align 8, !tbaa !7
  %194 = tail call double @llvm.fmuladd.f64(double %neg488, double %193, double %192)
  store double %194, double* %arrayidx186, align 8, !tbaa !7
  %195 = load double, double* %arrayidx194, align 8, !tbaa !7
  %196 = load double, double* %arrayidx115, align 8, !tbaa !7
  %197 = tail call double @llvm.fmuladd.f64(double %neg488, double %196, double %195)
  store double %197, double* %arrayidx194, align 8, !tbaa !7
  %198 = load double, double* %arrayidx201, align 8, !tbaa !7
  %199 = load double, double* %arrayidx122, align 8, !tbaa !7
  %200 = tail call double @llvm.fmuladd.f64(double %neg488, double %199, double %198)
  store double %200, double* %arrayidx201, align 8, !tbaa !7
  %201 = load double, double* %arrayidx209, align 8, !tbaa !7
  %202 = load double, double* %arrayidx217, align 8, !tbaa !7
  %203 = load double, double* %arrayidx59, align 8, !tbaa !7
  %neg559 = fneg double %201
  %204 = tail call double @llvm.fmuladd.f64(double %neg559, double %203, double %202)
  store double %204, double* %arrayidx217, align 8, !tbaa !7
  %205 = load double, double* %arrayidx225, align 8, !tbaa !7
  %206 = load double, double* %arrayidx67, align 8, !tbaa !7
  %207 = tail call double @llvm.fmuladd.f64(double %neg559, double %206, double %205)
  store double %207, double* %arrayidx225, align 8, !tbaa !7
  %208 = load double, double* %arrayidx233, align 8, !tbaa !7
  %209 = load double, double* %arrayidx75, align 8, !tbaa !7
  %210 = tail call double @llvm.fmuladd.f64(double %neg559, double %209, double %208)
  store double %210, double* %arrayidx233, align 8, !tbaa !7
  %211 = load double, double* %arrayidx241, align 8, !tbaa !7
  %212 = load double, double* %arrayidx83, align 8, !tbaa !7
  %213 = tail call double @llvm.fmuladd.f64(double %neg559, double %212, double %211)
  store double %213, double* %arrayidx241, align 8, !tbaa !7
  %214 = load double, double* %arrayidx249, align 8, !tbaa !7
  %215 = load double, double* %arrayidx91, align 8, !tbaa !7
  %216 = tail call double @llvm.fmuladd.f64(double %neg559, double %215, double %214)
  store double %216, double* %arrayidx249, align 8, !tbaa !7
  %217 = load double, double* %arrayidx257, align 8, !tbaa !7
  %218 = load double, double* %arrayidx99, align 8, !tbaa !7
  %219 = tail call double @llvm.fmuladd.f64(double %neg559, double %218, double %217)
  store double %219, double* %arrayidx257, align 8, !tbaa !7
  %220 = load double, double* %arrayidx265, align 8, !tbaa !7
  %221 = load double, double* %arrayidx107, align 8, !tbaa !7
  %222 = tail call double @llvm.fmuladd.f64(double %neg559, double %221, double %220)
  store double %222, double* %arrayidx265, align 8, !tbaa !7
  %223 = load double, double* %arrayidx273, align 8, !tbaa !7
  %224 = load double, double* %arrayidx115, align 8, !tbaa !7
  %225 = tail call double @llvm.fmuladd.f64(double %neg559, double %224, double %223)
  store double %225, double* %arrayidx273, align 8, !tbaa !7
  %226 = load double, double* %arrayidx280, align 8, !tbaa !7
  %227 = load double, double* %arrayidx122, align 8, !tbaa !7
  %228 = tail call double @llvm.fmuladd.f64(double %neg559, double %227, double %226)
  store double %228, double* %arrayidx280, align 8, !tbaa !7
  %229 = load double, double* %arrayidx288, align 8, !tbaa !7
  %230 = load double, double* %arrayidx296, align 8, !tbaa !7
  %231 = load double, double* %arrayidx59, align 8, !tbaa !7
  %neg630 = fneg double %229
  %232 = tail call double @llvm.fmuladd.f64(double %neg630, double %231, double %230)
  store double %232, double* %arrayidx296, align 8, !tbaa !7
  %233 = load double, double* %arrayidx304, align 8, !tbaa !7
  %234 = load double, double* %arrayidx67, align 8, !tbaa !7
  %235 = tail call double @llvm.fmuladd.f64(double %neg630, double %234, double %233)
  store double %235, double* %arrayidx304, align 8, !tbaa !7
  %236 = load double, double* %arrayidx312, align 8, !tbaa !7
  %237 = load double, double* %arrayidx75, align 8, !tbaa !7
  %238 = tail call double @llvm.fmuladd.f64(double %neg630, double %237, double %236)
  store double %238, double* %arrayidx312, align 8, !tbaa !7
  %239 = load double, double* %arrayidx320, align 8, !tbaa !7
  %240 = load double, double* %arrayidx83, align 8, !tbaa !7
  %241 = tail call double @llvm.fmuladd.f64(double %neg630, double %240, double %239)
  store double %241, double* %arrayidx320, align 8, !tbaa !7
  %242 = load double, double* %arrayidx328, align 8, !tbaa !7
  %243 = load double, double* %arrayidx91, align 8, !tbaa !7
  %244 = tail call double @llvm.fmuladd.f64(double %neg630, double %243, double %242)
  store double %244, double* %arrayidx328, align 8, !tbaa !7
  %245 = load double, double* %arrayidx336, align 8, !tbaa !7
  %246 = load double, double* %arrayidx99, align 8, !tbaa !7
  %247 = tail call double @llvm.fmuladd.f64(double %neg630, double %246, double %245)
  store double %247, double* %arrayidx336, align 8, !tbaa !7
  %248 = load double, double* %arrayidx344, align 8, !tbaa !7
  %249 = load double, double* %arrayidx107, align 8, !tbaa !7
  %250 = tail call double @llvm.fmuladd.f64(double %neg630, double %249, double %248)
  store double %250, double* %arrayidx344, align 8, !tbaa !7
  %251 = load double, double* %arrayidx352, align 8, !tbaa !7
  %252 = load double, double* %arrayidx115, align 8, !tbaa !7
  %253 = tail call double @llvm.fmuladd.f64(double %neg630, double %252, double %251)
  store double %253, double* %arrayidx352, align 8, !tbaa !7
  %254 = load double, double* %arrayidx359, align 8, !tbaa !7
  %255 = load double, double* %arrayidx122, align 8, !tbaa !7
  %256 = tail call double @llvm.fmuladd.f64(double %neg630, double %255, double %254)
  store double %256, double* %arrayidx359, align 8, !tbaa !7
  %257 = load double, double* %arrayidx138, align 8, !tbaa !7
  %div696 = fdiv double 1.000000e+00, %257
  %258 = load double, double* %arrayidx146, align 8, !tbaa !7
  %mul699 = fmul double %258, %div696
  store double %mul699, double* %arrayidx146, align 8, !tbaa !7
  %259 = load double, double* %arrayidx154, align 8, !tbaa !7
  %mul704 = fmul double %div696, %259
  store double %mul704, double* %arrayidx154, align 8, !tbaa !7
  %260 = load double, double* %arrayidx162, align 8, !tbaa !7
  %mul709 = fmul double %div696, %260
  store double %mul709, double* %arrayidx162, align 8, !tbaa !7
  %261 = load double, double* %arrayidx170, align 8, !tbaa !7
  %mul714 = fmul double %div696, %261
  store double %mul714, double* %arrayidx170, align 8, !tbaa !7
  %262 = load double, double* %arrayidx178, align 8, !tbaa !7
  %mul719 = fmul double %div696, %262
  store double %mul719, double* %arrayidx178, align 8, !tbaa !7
  %263 = load double, double* %arrayidx186, align 8, !tbaa !7
  %mul724 = fmul double %div696, %263
  store double %mul724, double* %arrayidx186, align 8, !tbaa !7
  %264 = load double, double* %arrayidx194, align 8, !tbaa !7
  %mul729 = fmul double %div696, %264
  store double %mul729, double* %arrayidx194, align 8, !tbaa !7
  %265 = load double, double* %arrayidx201, align 8, !tbaa !7
  %mul733 = fmul double %div696, %265
  store double %mul733, double* %arrayidx201, align 8, !tbaa !7
  %266 = load double, double* %arrayidx7, align 8, !tbaa !7
  %267 = load double, double* %arrayidx12, align 8, !tbaa !7
  %268 = load double, double* %arrayidx146, align 8, !tbaa !7
  %neg742 = fneg double %266
  %269 = tail call double @llvm.fmuladd.f64(double %neg742, double %268, double %267)
  store double %269, double* %arrayidx12, align 8, !tbaa !7
  %270 = load double, double* %arrayidx17, align 8, !tbaa !7
  %271 = load double, double* %arrayidx154, align 8, !tbaa !7
  %272 = tail call double @llvm.fmuladd.f64(double %neg742, double %271, double %270)
  store double %272, double* %arrayidx17, align 8, !tbaa !7
  %273 = load double, double* %arrayidx22, align 8, !tbaa !7
  %274 = load double, double* %arrayidx162, align 8, !tbaa !7
  %275 = tail call double @llvm.fmuladd.f64(double %neg742, double %274, double %273)
  store double %275, double* %arrayidx22, align 8, !tbaa !7
  %276 = load double, double* %arrayidx27, align 8, !tbaa !7
  %277 = load double, double* %arrayidx170, align 8, !tbaa !7
  %278 = tail call double @llvm.fmuladd.f64(double %neg742, double %277, double %276)
  store double %278, double* %arrayidx27, align 8, !tbaa !7
  %279 = load double, double* %arrayidx32, align 8, !tbaa !7
  %280 = load double, double* %arrayidx178, align 8, !tbaa !7
  %281 = tail call double @llvm.fmuladd.f64(double %neg742, double %280, double %279)
  store double %281, double* %arrayidx32, align 8, !tbaa !7
  %282 = load double, double* %arrayidx37, align 8, !tbaa !7
  %283 = load double, double* %arrayidx186, align 8, !tbaa !7
  %284 = tail call double @llvm.fmuladd.f64(double %neg742, double %283, double %282)
  store double %284, double* %arrayidx37, align 8, !tbaa !7
  %285 = load double, double* %arrayidx42, align 8, !tbaa !7
  %286 = load double, double* %arrayidx194, align 8, !tbaa !7
  %287 = tail call double @llvm.fmuladd.f64(double %neg742, double %286, double %285)
  store double %287, double* %arrayidx42, align 8, !tbaa !7
  %288 = load double, double* %r, align 8, !tbaa !7
  %289 = load double, double* %arrayidx201, align 8, !tbaa !7
  %290 = tail call double @llvm.fmuladd.f64(double %neg742, double %289, double %288)
  store double %290, double* %r, align 8, !tbaa !7
  %291 = load double, double* %arrayidx59, align 8, !tbaa !7
  %292 = load double, double* %arrayidx67, align 8, !tbaa !7
  %293 = load double, double* %arrayidx146, align 8, !tbaa !7
  %neg805 = fneg double %291
  %294 = tail call double @llvm.fmuladd.f64(double %neg805, double %293, double %292)
  store double %294, double* %arrayidx67, align 8, !tbaa !7
  %295 = load double, double* %arrayidx75, align 8, !tbaa !7
  %296 = load double, double* %arrayidx154, align 8, !tbaa !7
  %297 = tail call double @llvm.fmuladd.f64(double %neg805, double %296, double %295)
  store double %297, double* %arrayidx75, align 8, !tbaa !7
  %298 = load double, double* %arrayidx83, align 8, !tbaa !7
  %299 = load double, double* %arrayidx162, align 8, !tbaa !7
  %300 = tail call double @llvm.fmuladd.f64(double %neg805, double %299, double %298)
  store double %300, double* %arrayidx83, align 8, !tbaa !7
  %301 = load double, double* %arrayidx91, align 8, !tbaa !7
  %302 = load double, double* %arrayidx170, align 8, !tbaa !7
  %303 = tail call double @llvm.fmuladd.f64(double %neg805, double %302, double %301)
  store double %303, double* %arrayidx91, align 8, !tbaa !7
  %304 = load double, double* %arrayidx99, align 8, !tbaa !7
  %305 = load double, double* %arrayidx178, align 8, !tbaa !7
  %306 = tail call double @llvm.fmuladd.f64(double %neg805, double %305, double %304)
  store double %306, double* %arrayidx99, align 8, !tbaa !7
  %307 = load double, double* %arrayidx107, align 8, !tbaa !7
  %308 = load double, double* %arrayidx186, align 8, !tbaa !7
  %309 = tail call double @llvm.fmuladd.f64(double %neg805, double %308, double %307)
  store double %309, double* %arrayidx107, align 8, !tbaa !7
  %310 = load double, double* %arrayidx115, align 8, !tbaa !7
  %311 = load double, double* %arrayidx194, align 8, !tbaa !7
  %312 = tail call double @llvm.fmuladd.f64(double %neg805, double %311, double %310)
  store double %312, double* %arrayidx115, align 8, !tbaa !7
  %313 = load double, double* %arrayidx122, align 8, !tbaa !7
  %314 = load double, double* %arrayidx201, align 8, !tbaa !7
  %315 = tail call double @llvm.fmuladd.f64(double %neg805, double %314, double %313)
  store double %315, double* %arrayidx122, align 8, !tbaa !7
  %316 = load double, double* %arrayidx217, align 8, !tbaa !7
  %317 = load double, double* %arrayidx225, align 8, !tbaa !7
  %318 = load double, double* %arrayidx146, align 8, !tbaa !7
  %neg868 = fneg double %316
  %319 = tail call double @llvm.fmuladd.f64(double %neg868, double %318, double %317)
  store double %319, double* %arrayidx225, align 8, !tbaa !7
  %320 = load double, double* %arrayidx233, align 8, !tbaa !7
  %321 = load double, double* %arrayidx154, align 8, !tbaa !7
  %322 = tail call double @llvm.fmuladd.f64(double %neg868, double %321, double %320)
  store double %322, double* %arrayidx233, align 8, !tbaa !7
  %323 = load double, double* %arrayidx241, align 8, !tbaa !7
  %324 = load double, double* %arrayidx162, align 8, !tbaa !7
  %325 = tail call double @llvm.fmuladd.f64(double %neg868, double %324, double %323)
  store double %325, double* %arrayidx241, align 8, !tbaa !7
  %326 = load double, double* %arrayidx249, align 8, !tbaa !7
  %327 = load double, double* %arrayidx170, align 8, !tbaa !7
  %328 = tail call double @llvm.fmuladd.f64(double %neg868, double %327, double %326)
  store double %328, double* %arrayidx249, align 8, !tbaa !7
  %329 = load double, double* %arrayidx257, align 8, !tbaa !7
  %330 = load double, double* %arrayidx178, align 8, !tbaa !7
  %331 = tail call double @llvm.fmuladd.f64(double %neg868, double %330, double %329)
  store double %331, double* %arrayidx257, align 8, !tbaa !7
  %332 = load double, double* %arrayidx265, align 8, !tbaa !7
  %333 = load double, double* %arrayidx186, align 8, !tbaa !7
  %334 = tail call double @llvm.fmuladd.f64(double %neg868, double %333, double %332)
  store double %334, double* %arrayidx265, align 8, !tbaa !7
  %335 = load double, double* %arrayidx273, align 8, !tbaa !7
  %336 = load double, double* %arrayidx194, align 8, !tbaa !7
  %337 = tail call double @llvm.fmuladd.f64(double %neg868, double %336, double %335)
  store double %337, double* %arrayidx273, align 8, !tbaa !7
  %338 = load double, double* %arrayidx280, align 8, !tbaa !7
  %339 = load double, double* %arrayidx201, align 8, !tbaa !7
  %340 = tail call double @llvm.fmuladd.f64(double %neg868, double %339, double %338)
  store double %340, double* %arrayidx280, align 8, !tbaa !7
  %341 = load double, double* %arrayidx296, align 8, !tbaa !7
  %342 = load double, double* %arrayidx304, align 8, !tbaa !7
  %343 = load double, double* %arrayidx146, align 8, !tbaa !7
  %neg931 = fneg double %341
  %344 = tail call double @llvm.fmuladd.f64(double %neg931, double %343, double %342)
  store double %344, double* %arrayidx304, align 8, !tbaa !7
  %345 = load double, double* %arrayidx312, align 8, !tbaa !7
  %346 = load double, double* %arrayidx154, align 8, !tbaa !7
  %347 = tail call double @llvm.fmuladd.f64(double %neg931, double %346, double %345)
  store double %347, double* %arrayidx312, align 8, !tbaa !7
  %348 = load double, double* %arrayidx320, align 8, !tbaa !7
  %349 = load double, double* %arrayidx162, align 8, !tbaa !7
  %350 = tail call double @llvm.fmuladd.f64(double %neg931, double %349, double %348)
  store double %350, double* %arrayidx320, align 8, !tbaa !7
  %351 = load double, double* %arrayidx328, align 8, !tbaa !7
  %352 = load double, double* %arrayidx170, align 8, !tbaa !7
  %353 = tail call double @llvm.fmuladd.f64(double %neg931, double %352, double %351)
  store double %353, double* %arrayidx328, align 8, !tbaa !7
  %354 = load double, double* %arrayidx336, align 8, !tbaa !7
  %355 = load double, double* %arrayidx178, align 8, !tbaa !7
  %356 = tail call double @llvm.fmuladd.f64(double %neg931, double %355, double %354)
  store double %356, double* %arrayidx336, align 8, !tbaa !7
  %357 = load double, double* %arrayidx344, align 8, !tbaa !7
  %358 = load double, double* %arrayidx186, align 8, !tbaa !7
  %359 = tail call double @llvm.fmuladd.f64(double %neg931, double %358, double %357)
  store double %359, double* %arrayidx344, align 8, !tbaa !7
  %360 = load double, double* %arrayidx352, align 8, !tbaa !7
  %361 = load double, double* %arrayidx194, align 8, !tbaa !7
  %362 = tail call double @llvm.fmuladd.f64(double %neg931, double %361, double %360)
  store double %362, double* %arrayidx352, align 8, !tbaa !7
  %363 = load double, double* %arrayidx359, align 8, !tbaa !7
  %364 = load double, double* %arrayidx201, align 8, !tbaa !7
  %365 = tail call double @llvm.fmuladd.f64(double %neg931, double %364, double %363)
  store double %365, double* %arrayidx359, align 8, !tbaa !7
  %366 = load double, double* %arrayidx225, align 8, !tbaa !7
  %div989 = fdiv double 1.000000e+00, %366
  %367 = load double, double* %arrayidx233, align 8, !tbaa !7
  %mul992 = fmul double %367, %div989
  store double %mul992, double* %arrayidx233, align 8, !tbaa !7
  %368 = load double, double* %arrayidx241, align 8, !tbaa !7
  %mul997 = fmul double %div989, %368
  store double %mul997, double* %arrayidx241, align 8, !tbaa !7
  %369 = load double, double* %arrayidx249, align 8, !tbaa !7
  %mul1002 = fmul double %div989, %369
  store double %mul1002, double* %arrayidx249, align 8, !tbaa !7
  %370 = load double, double* %arrayidx257, align 8, !tbaa !7
  %mul1007 = fmul double %div989, %370
  store double %mul1007, double* %arrayidx257, align 8, !tbaa !7
  %371 = load double, double* %arrayidx265, align 8, !tbaa !7
  %mul1012 = fmul double %div989, %371
  store double %mul1012, double* %arrayidx265, align 8, !tbaa !7
  %372 = load double, double* %arrayidx273, align 8, !tbaa !7
  %mul1017 = fmul double %div989, %372
  store double %mul1017, double* %arrayidx273, align 8, !tbaa !7
  %373 = load double, double* %arrayidx280, align 8, !tbaa !7
  %mul1021 = fmul double %div989, %373
  store double %mul1021, double* %arrayidx280, align 8, !tbaa !7
  %374 = load double, double* %arrayidx12, align 8, !tbaa !7
  %375 = load double, double* %arrayidx17, align 8, !tbaa !7
  %376 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg1030 = fneg double %374
  %377 = tail call double @llvm.fmuladd.f64(double %neg1030, double %376, double %375)
  store double %377, double* %arrayidx17, align 8, !tbaa !7
  %378 = load double, double* %arrayidx22, align 8, !tbaa !7
  %379 = load double, double* %arrayidx241, align 8, !tbaa !7
  %380 = tail call double @llvm.fmuladd.f64(double %neg1030, double %379, double %378)
  store double %380, double* %arrayidx22, align 8, !tbaa !7
  %381 = load double, double* %arrayidx27, align 8, !tbaa !7
  %382 = load double, double* %arrayidx249, align 8, !tbaa !7
  %383 = tail call double @llvm.fmuladd.f64(double %neg1030, double %382, double %381)
  store double %383, double* %arrayidx27, align 8, !tbaa !7
  %384 = load double, double* %arrayidx32, align 8, !tbaa !7
  %385 = load double, double* %arrayidx257, align 8, !tbaa !7
  %386 = tail call double @llvm.fmuladd.f64(double %neg1030, double %385, double %384)
  store double %386, double* %arrayidx32, align 8, !tbaa !7
  %387 = load double, double* %arrayidx37, align 8, !tbaa !7
  %388 = load double, double* %arrayidx265, align 8, !tbaa !7
  %389 = tail call double @llvm.fmuladd.f64(double %neg1030, double %388, double %387)
  store double %389, double* %arrayidx37, align 8, !tbaa !7
  %390 = load double, double* %arrayidx42, align 8, !tbaa !7
  %391 = load double, double* %arrayidx273, align 8, !tbaa !7
  %392 = tail call double @llvm.fmuladd.f64(double %neg1030, double %391, double %390)
  store double %392, double* %arrayidx42, align 8, !tbaa !7
  %393 = load double, double* %r, align 8, !tbaa !7
  %394 = load double, double* %arrayidx280, align 8, !tbaa !7
  %395 = tail call double @llvm.fmuladd.f64(double %neg1030, double %394, double %393)
  store double %395, double* %r, align 8, !tbaa !7
  %396 = load double, double* %arrayidx67, align 8, !tbaa !7
  %397 = load double, double* %arrayidx75, align 8, !tbaa !7
  %398 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg1085 = fneg double %396
  %399 = tail call double @llvm.fmuladd.f64(double %neg1085, double %398, double %397)
  store double %399, double* %arrayidx75, align 8, !tbaa !7
  %400 = load double, double* %arrayidx83, align 8, !tbaa !7
  %401 = load double, double* %arrayidx241, align 8, !tbaa !7
  %402 = tail call double @llvm.fmuladd.f64(double %neg1085, double %401, double %400)
  store double %402, double* %arrayidx83, align 8, !tbaa !7
  %403 = load double, double* %arrayidx91, align 8, !tbaa !7
  %404 = load double, double* %arrayidx249, align 8, !tbaa !7
  %405 = tail call double @llvm.fmuladd.f64(double %neg1085, double %404, double %403)
  store double %405, double* %arrayidx91, align 8, !tbaa !7
  %406 = load double, double* %arrayidx99, align 8, !tbaa !7
  %407 = load double, double* %arrayidx257, align 8, !tbaa !7
  %408 = tail call double @llvm.fmuladd.f64(double %neg1085, double %407, double %406)
  store double %408, double* %arrayidx99, align 8, !tbaa !7
  %409 = load double, double* %arrayidx107, align 8, !tbaa !7
  %410 = load double, double* %arrayidx265, align 8, !tbaa !7
  %411 = tail call double @llvm.fmuladd.f64(double %neg1085, double %410, double %409)
  store double %411, double* %arrayidx107, align 8, !tbaa !7
  %412 = load double, double* %arrayidx115, align 8, !tbaa !7
  %413 = load double, double* %arrayidx273, align 8, !tbaa !7
  %414 = tail call double @llvm.fmuladd.f64(double %neg1085, double %413, double %412)
  store double %414, double* %arrayidx115, align 8, !tbaa !7
  %415 = load double, double* %arrayidx122, align 8, !tbaa !7
  %416 = load double, double* %arrayidx280, align 8, !tbaa !7
  %417 = tail call double @llvm.fmuladd.f64(double %neg1085, double %416, double %415)
  store double %417, double* %arrayidx122, align 8, !tbaa !7
  %418 = load double, double* %arrayidx146, align 8, !tbaa !7
  %419 = load double, double* %arrayidx154, align 8, !tbaa !7
  %420 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg1140 = fneg double %418
  %421 = tail call double @llvm.fmuladd.f64(double %neg1140, double %420, double %419)
  store double %421, double* %arrayidx154, align 8, !tbaa !7
  %422 = load double, double* %arrayidx162, align 8, !tbaa !7
  %423 = load double, double* %arrayidx241, align 8, !tbaa !7
  %424 = tail call double @llvm.fmuladd.f64(double %neg1140, double %423, double %422)
  store double %424, double* %arrayidx162, align 8, !tbaa !7
  %425 = load double, double* %arrayidx170, align 8, !tbaa !7
  %426 = load double, double* %arrayidx249, align 8, !tbaa !7
  %427 = tail call double @llvm.fmuladd.f64(double %neg1140, double %426, double %425)
  store double %427, double* %arrayidx170, align 8, !tbaa !7
  %428 = load double, double* %arrayidx178, align 8, !tbaa !7
  %429 = load double, double* %arrayidx257, align 8, !tbaa !7
  %430 = tail call double @llvm.fmuladd.f64(double %neg1140, double %429, double %428)
  store double %430, double* %arrayidx178, align 8, !tbaa !7
  %431 = load double, double* %arrayidx186, align 8, !tbaa !7
  %432 = load double, double* %arrayidx265, align 8, !tbaa !7
  %433 = tail call double @llvm.fmuladd.f64(double %neg1140, double %432, double %431)
  store double %433, double* %arrayidx186, align 8, !tbaa !7
  %434 = load double, double* %arrayidx194, align 8, !tbaa !7
  %435 = load double, double* %arrayidx273, align 8, !tbaa !7
  %436 = tail call double @llvm.fmuladd.f64(double %neg1140, double %435, double %434)
  store double %436, double* %arrayidx194, align 8, !tbaa !7
  %437 = load double, double* %arrayidx201, align 8, !tbaa !7
  %438 = load double, double* %arrayidx280, align 8, !tbaa !7
  %439 = tail call double @llvm.fmuladd.f64(double %neg1140, double %438, double %437)
  store double %439, double* %arrayidx201, align 8, !tbaa !7
  %440 = load double, double* %arrayidx304, align 8, !tbaa !7
  %441 = load double, double* %arrayidx312, align 8, !tbaa !7
  %442 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg1195 = fneg double %440
  %443 = tail call double @llvm.fmuladd.f64(double %neg1195, double %442, double %441)
  store double %443, double* %arrayidx312, align 8, !tbaa !7
  %444 = load double, double* %arrayidx320, align 8, !tbaa !7
  %445 = load double, double* %arrayidx241, align 8, !tbaa !7
  %446 = tail call double @llvm.fmuladd.f64(double %neg1195, double %445, double %444)
  store double %446, double* %arrayidx320, align 8, !tbaa !7
  %447 = load double, double* %arrayidx328, align 8, !tbaa !7
  %448 = load double, double* %arrayidx249, align 8, !tbaa !7
  %449 = tail call double @llvm.fmuladd.f64(double %neg1195, double %448, double %447)
  store double %449, double* %arrayidx328, align 8, !tbaa !7
  %450 = load double, double* %arrayidx336, align 8, !tbaa !7
  %451 = load double, double* %arrayidx257, align 8, !tbaa !7
  %452 = tail call double @llvm.fmuladd.f64(double %neg1195, double %451, double %450)
  store double %452, double* %arrayidx336, align 8, !tbaa !7
  %453 = load double, double* %arrayidx344, align 8, !tbaa !7
  %454 = load double, double* %arrayidx265, align 8, !tbaa !7
  %455 = tail call double @llvm.fmuladd.f64(double %neg1195, double %454, double %453)
  store double %455, double* %arrayidx344, align 8, !tbaa !7
  %456 = load double, double* %arrayidx352, align 8, !tbaa !7
  %457 = load double, double* %arrayidx273, align 8, !tbaa !7
  %458 = tail call double @llvm.fmuladd.f64(double %neg1195, double %457, double %456)
  store double %458, double* %arrayidx352, align 8, !tbaa !7
  %459 = load double, double* %arrayidx359, align 8, !tbaa !7
  %460 = load double, double* %arrayidx280, align 8, !tbaa !7
  %461 = tail call double @llvm.fmuladd.f64(double %neg1195, double %460, double %459)
  store double %461, double* %arrayidx359, align 8, !tbaa !7
  %462 = load double, double* %arrayidx312, align 8, !tbaa !7
  %div1245 = fdiv double 1.000000e+00, %462
  %463 = load double, double* %arrayidx320, align 8, !tbaa !7
  %mul1248 = fmul double %463, %div1245
  store double %mul1248, double* %arrayidx320, align 8, !tbaa !7
  %464 = load double, double* %arrayidx328, align 8, !tbaa !7
  %mul1253 = fmul double %div1245, %464
  store double %mul1253, double* %arrayidx328, align 8, !tbaa !7
  %465 = load double, double* %arrayidx336, align 8, !tbaa !7
  %mul1258 = fmul double %div1245, %465
  store double %mul1258, double* %arrayidx336, align 8, !tbaa !7
  %466 = load double, double* %arrayidx344, align 8, !tbaa !7
  %mul1263 = fmul double %div1245, %466
  store double %mul1263, double* %arrayidx344, align 8, !tbaa !7
  %467 = load double, double* %arrayidx352, align 8, !tbaa !7
  %mul1268 = fmul double %div1245, %467
  store double %mul1268, double* %arrayidx352, align 8, !tbaa !7
  %468 = load double, double* %arrayidx359, align 8, !tbaa !7
  %mul1272 = fmul double %div1245, %468
  store double %mul1272, double* %arrayidx359, align 8, !tbaa !7
  %469 = load double, double* %arrayidx17, align 8, !tbaa !7
  %470 = load double, double* %arrayidx22, align 8, !tbaa !7
  %471 = load double, double* %arrayidx320, align 8, !tbaa !7
  %neg1281 = fneg double %469
  %472 = tail call double @llvm.fmuladd.f64(double %neg1281, double %471, double %470)
  store double %472, double* %arrayidx22, align 8, !tbaa !7
  %473 = load double, double* %arrayidx27, align 8, !tbaa !7
  %474 = load double, double* %arrayidx328, align 8, !tbaa !7
  %475 = tail call double @llvm.fmuladd.f64(double %neg1281, double %474, double %473)
  store double %475, double* %arrayidx27, align 8, !tbaa !7
  %476 = load double, double* %arrayidx32, align 8, !tbaa !7
  %477 = load double, double* %arrayidx336, align 8, !tbaa !7
  %478 = tail call double @llvm.fmuladd.f64(double %neg1281, double %477, double %476)
  store double %478, double* %arrayidx32, align 8, !tbaa !7
  %479 = load double, double* %arrayidx37, align 8, !tbaa !7
  %480 = load double, double* %arrayidx344, align 8, !tbaa !7
  %481 = tail call double @llvm.fmuladd.f64(double %neg1281, double %480, double %479)
  store double %481, double* %arrayidx37, align 8, !tbaa !7
  %482 = load double, double* %arrayidx42, align 8, !tbaa !7
  %483 = load double, double* %arrayidx352, align 8, !tbaa !7
  %484 = tail call double @llvm.fmuladd.f64(double %neg1281, double %483, double %482)
  store double %484, double* %arrayidx42, align 8, !tbaa !7
  %485 = load double, double* %r, align 8, !tbaa !7
  %486 = load double, double* %arrayidx359, align 8, !tbaa !7
  %487 = tail call double @llvm.fmuladd.f64(double %neg1281, double %486, double %485)
  store double %487, double* %r, align 8, !tbaa !7
  %488 = load double, double* %arrayidx75, align 8, !tbaa !7
  %489 = load double, double* %arrayidx83, align 8, !tbaa !7
  %490 = load double, double* %arrayidx320, align 8, !tbaa !7
  %neg1328 = fneg double %488
  %491 = tail call double @llvm.fmuladd.f64(double %neg1328, double %490, double %489)
  store double %491, double* %arrayidx83, align 8, !tbaa !7
  %492 = load double, double* %arrayidx91, align 8, !tbaa !7
  %493 = load double, double* %arrayidx328, align 8, !tbaa !7
  %494 = tail call double @llvm.fmuladd.f64(double %neg1328, double %493, double %492)
  store double %494, double* %arrayidx91, align 8, !tbaa !7
  %495 = load double, double* %arrayidx99, align 8, !tbaa !7
  %496 = load double, double* %arrayidx336, align 8, !tbaa !7
  %497 = tail call double @llvm.fmuladd.f64(double %neg1328, double %496, double %495)
  store double %497, double* %arrayidx99, align 8, !tbaa !7
  %498 = load double, double* %arrayidx107, align 8, !tbaa !7
  %499 = load double, double* %arrayidx344, align 8, !tbaa !7
  %500 = tail call double @llvm.fmuladd.f64(double %neg1328, double %499, double %498)
  store double %500, double* %arrayidx107, align 8, !tbaa !7
  %501 = load double, double* %arrayidx115, align 8, !tbaa !7
  %502 = load double, double* %arrayidx352, align 8, !tbaa !7
  %503 = tail call double @llvm.fmuladd.f64(double %neg1328, double %502, double %501)
  store double %503, double* %arrayidx115, align 8, !tbaa !7
  %504 = load double, double* %arrayidx122, align 8, !tbaa !7
  %505 = load double, double* %arrayidx359, align 8, !tbaa !7
  %506 = tail call double @llvm.fmuladd.f64(double %neg1328, double %505, double %504)
  store double %506, double* %arrayidx122, align 8, !tbaa !7
  %507 = load double, double* %arrayidx154, align 8, !tbaa !7
  %508 = load double, double* %arrayidx162, align 8, !tbaa !7
  %509 = load double, double* %arrayidx320, align 8, !tbaa !7
  %neg1375 = fneg double %507
  %510 = tail call double @llvm.fmuladd.f64(double %neg1375, double %509, double %508)
  store double %510, double* %arrayidx162, align 8, !tbaa !7
  %511 = load double, double* %arrayidx170, align 8, !tbaa !7
  %512 = load double, double* %arrayidx328, align 8, !tbaa !7
  %513 = tail call double @llvm.fmuladd.f64(double %neg1375, double %512, double %511)
  store double %513, double* %arrayidx170, align 8, !tbaa !7
  %514 = load double, double* %arrayidx178, align 8, !tbaa !7
  %515 = load double, double* %arrayidx336, align 8, !tbaa !7
  %516 = tail call double @llvm.fmuladd.f64(double %neg1375, double %515, double %514)
  store double %516, double* %arrayidx178, align 8, !tbaa !7
  %517 = load double, double* %arrayidx186, align 8, !tbaa !7
  %518 = load double, double* %arrayidx344, align 8, !tbaa !7
  %519 = tail call double @llvm.fmuladd.f64(double %neg1375, double %518, double %517)
  store double %519, double* %arrayidx186, align 8, !tbaa !7
  %520 = load double, double* %arrayidx194, align 8, !tbaa !7
  %521 = load double, double* %arrayidx352, align 8, !tbaa !7
  %522 = tail call double @llvm.fmuladd.f64(double %neg1375, double %521, double %520)
  store double %522, double* %arrayidx194, align 8, !tbaa !7
  %523 = load double, double* %arrayidx201, align 8, !tbaa !7
  %524 = load double, double* %arrayidx359, align 8, !tbaa !7
  %525 = tail call double @llvm.fmuladd.f64(double %neg1375, double %524, double %523)
  store double %525, double* %arrayidx201, align 8, !tbaa !7
  %526 = load double, double* %arrayidx233, align 8, !tbaa !7
  %527 = load double, double* %arrayidx241, align 8, !tbaa !7
  %528 = load double, double* %arrayidx320, align 8, !tbaa !7
  %neg1422 = fneg double %526
  %529 = tail call double @llvm.fmuladd.f64(double %neg1422, double %528, double %527)
  store double %529, double* %arrayidx241, align 8, !tbaa !7
  %530 = load double, double* %arrayidx249, align 8, !tbaa !7
  %531 = load double, double* %arrayidx328, align 8, !tbaa !7
  %532 = tail call double @llvm.fmuladd.f64(double %neg1422, double %531, double %530)
  store double %532, double* %arrayidx249, align 8, !tbaa !7
  %533 = load double, double* %arrayidx257, align 8, !tbaa !7
  %534 = load double, double* %arrayidx336, align 8, !tbaa !7
  %535 = tail call double @llvm.fmuladd.f64(double %neg1422, double %534, double %533)
  store double %535, double* %arrayidx257, align 8, !tbaa !7
  %536 = load double, double* %arrayidx265, align 8, !tbaa !7
  %537 = load double, double* %arrayidx344, align 8, !tbaa !7
  %538 = tail call double @llvm.fmuladd.f64(double %neg1422, double %537, double %536)
  store double %538, double* %arrayidx265, align 8, !tbaa !7
  %539 = load double, double* %arrayidx273, align 8, !tbaa !7
  %540 = load double, double* %arrayidx352, align 8, !tbaa !7
  %541 = tail call double @llvm.fmuladd.f64(double %neg1422, double %540, double %539)
  store double %541, double* %arrayidx273, align 8, !tbaa !7
  %542 = load double, double* %arrayidx280, align 8, !tbaa !7
  %543 = load double, double* %arrayidx359, align 8, !tbaa !7
  %544 = tail call double @llvm.fmuladd.f64(double %neg1422, double %543, double %542)
  store double %544, double* %arrayidx280, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @p_binvrhs([5 x double]* %lhs, double* nocapture %r) local_unnamed_addr #4 {
entry:
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 0
  %0 = load double, double* %arrayidx1, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %0
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 0
  %1 = load double, double* %arrayidx3, align 8, !tbaa !7
  %mul = fmul double %1, %div
  store double %mul, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 0
  %2 = load double, double* %arrayidx7, align 8, !tbaa !7
  %mul8 = fmul double %div, %2
  store double %mul8, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 0
  %3 = load double, double* %arrayidx12, align 8, !tbaa !7
  %mul13 = fmul double %div, %3
  store double %mul13, double* %arrayidx12, align 8, !tbaa !7
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 0
  %4 = load double, double* %arrayidx17, align 8, !tbaa !7
  %mul18 = fmul double %div, %4
  store double %mul18, double* %arrayidx17, align 8, !tbaa !7
  %5 = load double, double* %r, align 8, !tbaa !7
  %mul22 = fmul double %div, %5
  store double %mul22, double* %r, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 1
  %6 = load double, double* %arrayidx25, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 1
  %7 = load double, double* %arrayidx27, align 8, !tbaa !7
  %8 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg = fneg double %6
  %9 = tail call double @llvm.fmuladd.f64(double %neg, double %8, double %7)
  store double %9, double* %arrayidx27, align 8, !tbaa !7
  %arrayidx34 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 1
  %10 = load double, double* %arrayidx34, align 8, !tbaa !7
  %11 = load double, double* %arrayidx7, align 8, !tbaa !7
  %12 = tail call double @llvm.fmuladd.f64(double %neg, double %11, double %10)
  store double %12, double* %arrayidx34, align 8, !tbaa !7
  %arrayidx42 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 1
  %13 = load double, double* %arrayidx42, align 8, !tbaa !7
  %14 = load double, double* %arrayidx12, align 8, !tbaa !7
  %15 = tail call double @llvm.fmuladd.f64(double %neg, double %14, double %13)
  store double %15, double* %arrayidx42, align 8, !tbaa !7
  %arrayidx50 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 1
  %16 = load double, double* %arrayidx50, align 8, !tbaa !7
  %17 = load double, double* %arrayidx17, align 8, !tbaa !7
  %18 = tail call double @llvm.fmuladd.f64(double %neg, double %17, double %16)
  store double %18, double* %arrayidx50, align 8, !tbaa !7
  %arrayidx57 = getelementptr inbounds double, double* %r, i64 1
  %19 = load double, double* %arrayidx57, align 8, !tbaa !7
  %20 = load double, double* %r, align 8, !tbaa !7
  %21 = tail call double @llvm.fmuladd.f64(double %neg, double %20, double %19)
  store double %21, double* %arrayidx57, align 8, !tbaa !7
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 2
  %22 = load double, double* %arrayidx63, align 8, !tbaa !7
  %arrayidx65 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 2
  %23 = load double, double* %arrayidx65, align 8, !tbaa !7
  %24 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg69 = fneg double %22
  %25 = tail call double @llvm.fmuladd.f64(double %neg69, double %24, double %23)
  store double %25, double* %arrayidx65, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 2
  %26 = load double, double* %arrayidx73, align 8, !tbaa !7
  %27 = load double, double* %arrayidx7, align 8, !tbaa !7
  %28 = tail call double @llvm.fmuladd.f64(double %neg69, double %27, double %26)
  store double %28, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 2
  %29 = load double, double* %arrayidx81, align 8, !tbaa !7
  %30 = load double, double* %arrayidx12, align 8, !tbaa !7
  %31 = tail call double @llvm.fmuladd.f64(double %neg69, double %30, double %29)
  store double %31, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 2
  %32 = load double, double* %arrayidx89, align 8, !tbaa !7
  %33 = load double, double* %arrayidx17, align 8, !tbaa !7
  %34 = tail call double @llvm.fmuladd.f64(double %neg69, double %33, double %32)
  store double %34, double* %arrayidx89, align 8, !tbaa !7
  %arrayidx96 = getelementptr inbounds double, double* %r, i64 2
  %35 = load double, double* %arrayidx96, align 8, !tbaa !7
  %36 = load double, double* %r, align 8, !tbaa !7
  %37 = tail call double @llvm.fmuladd.f64(double %neg69, double %36, double %35)
  store double %37, double* %arrayidx96, align 8, !tbaa !7
  %arrayidx102 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 3
  %38 = load double, double* %arrayidx102, align 8, !tbaa !7
  %arrayidx104 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 3
  %39 = load double, double* %arrayidx104, align 8, !tbaa !7
  %40 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg108 = fneg double %38
  %41 = tail call double @llvm.fmuladd.f64(double %neg108, double %40, double %39)
  store double %41, double* %arrayidx104, align 8, !tbaa !7
  %arrayidx112 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 3
  %42 = load double, double* %arrayidx112, align 8, !tbaa !7
  %43 = load double, double* %arrayidx7, align 8, !tbaa !7
  %44 = tail call double @llvm.fmuladd.f64(double %neg108, double %43, double %42)
  store double %44, double* %arrayidx112, align 8, !tbaa !7
  %arrayidx120 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 3
  %45 = load double, double* %arrayidx120, align 8, !tbaa !7
  %46 = load double, double* %arrayidx12, align 8, !tbaa !7
  %47 = tail call double @llvm.fmuladd.f64(double %neg108, double %46, double %45)
  store double %47, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx128 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 3
  %48 = load double, double* %arrayidx128, align 8, !tbaa !7
  %49 = load double, double* %arrayidx17, align 8, !tbaa !7
  %50 = tail call double @llvm.fmuladd.f64(double %neg108, double %49, double %48)
  store double %50, double* %arrayidx128, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds double, double* %r, i64 3
  %51 = load double, double* %arrayidx135, align 8, !tbaa !7
  %52 = load double, double* %r, align 8, !tbaa !7
  %53 = tail call double @llvm.fmuladd.f64(double %neg108, double %52, double %51)
  store double %53, double* %arrayidx135, align 8, !tbaa !7
  %arrayidx141 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 0, i64 4
  %54 = load double, double* %arrayidx141, align 8, !tbaa !7
  %arrayidx143 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 1, i64 4
  %55 = load double, double* %arrayidx143, align 8, !tbaa !7
  %56 = load double, double* %arrayidx3, align 8, !tbaa !7
  %neg147 = fneg double %54
  %57 = tail call double @llvm.fmuladd.f64(double %neg147, double %56, double %55)
  store double %57, double* %arrayidx143, align 8, !tbaa !7
  %arrayidx151 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 2, i64 4
  %58 = load double, double* %arrayidx151, align 8, !tbaa !7
  %59 = load double, double* %arrayidx7, align 8, !tbaa !7
  %60 = tail call double @llvm.fmuladd.f64(double %neg147, double %59, double %58)
  store double %60, double* %arrayidx151, align 8, !tbaa !7
  %arrayidx159 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 3, i64 4
  %61 = load double, double* %arrayidx159, align 8, !tbaa !7
  %62 = load double, double* %arrayidx12, align 8, !tbaa !7
  %63 = tail call double @llvm.fmuladd.f64(double %neg147, double %62, double %61)
  store double %63, double* %arrayidx159, align 8, !tbaa !7
  %arrayidx167 = getelementptr inbounds [5 x double], [5 x double]* %lhs, i64 4, i64 4
  %64 = load double, double* %arrayidx167, align 8, !tbaa !7
  %65 = load double, double* %arrayidx17, align 8, !tbaa !7
  %66 = tail call double @llvm.fmuladd.f64(double %neg147, double %65, double %64)
  store double %66, double* %arrayidx167, align 8, !tbaa !7
  %arrayidx174 = getelementptr inbounds double, double* %r, i64 4
  %67 = load double, double* %arrayidx174, align 8, !tbaa !7
  %68 = load double, double* %r, align 8, !tbaa !7
  %69 = tail call double @llvm.fmuladd.f64(double %neg147, double %68, double %67)
  store double %69, double* %arrayidx174, align 8, !tbaa !7
  %70 = load double, double* %arrayidx27, align 8, !tbaa !7
  %div181 = fdiv double 1.000000e+00, %70
  %71 = load double, double* %arrayidx34, align 8, !tbaa !7
  %mul184 = fmul double %71, %div181
  store double %mul184, double* %arrayidx34, align 8, !tbaa !7
  %72 = load double, double* %arrayidx42, align 8, !tbaa !7
  %mul189 = fmul double %div181, %72
  store double %mul189, double* %arrayidx42, align 8, !tbaa !7
  %73 = load double, double* %arrayidx50, align 8, !tbaa !7
  %mul194 = fmul double %div181, %73
  store double %mul194, double* %arrayidx50, align 8, !tbaa !7
  %74 = load double, double* %arrayidx57, align 8, !tbaa !7
  %mul198 = fmul double %div181, %74
  store double %mul198, double* %arrayidx57, align 8, !tbaa !7
  %75 = load double, double* %arrayidx3, align 8, !tbaa !7
  %76 = load double, double* %arrayidx7, align 8, !tbaa !7
  %77 = load double, double* %arrayidx34, align 8, !tbaa !7
  %neg207 = fneg double %75
  %78 = tail call double @llvm.fmuladd.f64(double %neg207, double %77, double %76)
  store double %78, double* %arrayidx7, align 8, !tbaa !7
  %79 = load double, double* %arrayidx12, align 8, !tbaa !7
  %80 = load double, double* %arrayidx42, align 8, !tbaa !7
  %81 = tail call double @llvm.fmuladd.f64(double %neg207, double %80, double %79)
  store double %81, double* %arrayidx12, align 8, !tbaa !7
  %82 = load double, double* %arrayidx17, align 8, !tbaa !7
  %83 = load double, double* %arrayidx50, align 8, !tbaa !7
  %84 = tail call double @llvm.fmuladd.f64(double %neg207, double %83, double %82)
  store double %84, double* %arrayidx17, align 8, !tbaa !7
  %85 = load double, double* %r, align 8, !tbaa !7
  %86 = load double, double* %arrayidx57, align 8, !tbaa !7
  %87 = tail call double @llvm.fmuladd.f64(double %neg207, double %86, double %85)
  store double %87, double* %r, align 8, !tbaa !7
  %88 = load double, double* %arrayidx65, align 8, !tbaa !7
  %89 = load double, double* %arrayidx73, align 8, !tbaa !7
  %90 = load double, double* %arrayidx34, align 8, !tbaa !7
  %neg238 = fneg double %88
  %91 = tail call double @llvm.fmuladd.f64(double %neg238, double %90, double %89)
  store double %91, double* %arrayidx73, align 8, !tbaa !7
  %92 = load double, double* %arrayidx81, align 8, !tbaa !7
  %93 = load double, double* %arrayidx42, align 8, !tbaa !7
  %94 = tail call double @llvm.fmuladd.f64(double %neg238, double %93, double %92)
  store double %94, double* %arrayidx81, align 8, !tbaa !7
  %95 = load double, double* %arrayidx89, align 8, !tbaa !7
  %96 = load double, double* %arrayidx50, align 8, !tbaa !7
  %97 = tail call double @llvm.fmuladd.f64(double %neg238, double %96, double %95)
  store double %97, double* %arrayidx89, align 8, !tbaa !7
  %98 = load double, double* %arrayidx96, align 8, !tbaa !7
  %99 = load double, double* %arrayidx57, align 8, !tbaa !7
  %100 = tail call double @llvm.fmuladd.f64(double %neg238, double %99, double %98)
  store double %100, double* %arrayidx96, align 8, !tbaa !7
  %101 = load double, double* %arrayidx104, align 8, !tbaa !7
  %102 = load double, double* %arrayidx112, align 8, !tbaa !7
  %103 = load double, double* %arrayidx34, align 8, !tbaa !7
  %neg269 = fneg double %101
  %104 = tail call double @llvm.fmuladd.f64(double %neg269, double %103, double %102)
  store double %104, double* %arrayidx112, align 8, !tbaa !7
  %105 = load double, double* %arrayidx120, align 8, !tbaa !7
  %106 = load double, double* %arrayidx42, align 8, !tbaa !7
  %107 = tail call double @llvm.fmuladd.f64(double %neg269, double %106, double %105)
  store double %107, double* %arrayidx120, align 8, !tbaa !7
  %108 = load double, double* %arrayidx128, align 8, !tbaa !7
  %109 = load double, double* %arrayidx50, align 8, !tbaa !7
  %110 = tail call double @llvm.fmuladd.f64(double %neg269, double %109, double %108)
  store double %110, double* %arrayidx128, align 8, !tbaa !7
  %111 = load double, double* %arrayidx135, align 8, !tbaa !7
  %112 = load double, double* %arrayidx57, align 8, !tbaa !7
  %113 = tail call double @llvm.fmuladd.f64(double %neg269, double %112, double %111)
  store double %113, double* %arrayidx135, align 8, !tbaa !7
  %114 = load double, double* %arrayidx143, align 8, !tbaa !7
  %115 = load double, double* %arrayidx151, align 8, !tbaa !7
  %116 = load double, double* %arrayidx34, align 8, !tbaa !7
  %neg300 = fneg double %114
  %117 = tail call double @llvm.fmuladd.f64(double %neg300, double %116, double %115)
  store double %117, double* %arrayidx151, align 8, !tbaa !7
  %118 = load double, double* %arrayidx159, align 8, !tbaa !7
  %119 = load double, double* %arrayidx42, align 8, !tbaa !7
  %120 = tail call double @llvm.fmuladd.f64(double %neg300, double %119, double %118)
  store double %120, double* %arrayidx159, align 8, !tbaa !7
  %121 = load double, double* %arrayidx167, align 8, !tbaa !7
  %122 = load double, double* %arrayidx50, align 8, !tbaa !7
  %123 = tail call double @llvm.fmuladd.f64(double %neg300, double %122, double %121)
  store double %123, double* %arrayidx167, align 8, !tbaa !7
  %124 = load double, double* %arrayidx174, align 8, !tbaa !7
  %125 = load double, double* %arrayidx57, align 8, !tbaa !7
  %126 = tail call double @llvm.fmuladd.f64(double %neg300, double %125, double %124)
  store double %126, double* %arrayidx174, align 8, !tbaa !7
  %127 = load double, double* %arrayidx73, align 8, !tbaa !7
  %div326 = fdiv double 1.000000e+00, %127
  %128 = load double, double* %arrayidx81, align 8, !tbaa !7
  %mul329 = fmul double %128, %div326
  store double %mul329, double* %arrayidx81, align 8, !tbaa !7
  %129 = load double, double* %arrayidx89, align 8, !tbaa !7
  %mul334 = fmul double %div326, %129
  store double %mul334, double* %arrayidx89, align 8, !tbaa !7
  %130 = load double, double* %arrayidx96, align 8, !tbaa !7
  %mul338 = fmul double %div326, %130
  store double %mul338, double* %arrayidx96, align 8, !tbaa !7
  %131 = load double, double* %arrayidx7, align 8, !tbaa !7
  %132 = load double, double* %arrayidx12, align 8, !tbaa !7
  %133 = load double, double* %arrayidx81, align 8, !tbaa !7
  %neg347 = fneg double %131
  %134 = tail call double @llvm.fmuladd.f64(double %neg347, double %133, double %132)
  store double %134, double* %arrayidx12, align 8, !tbaa !7
  %135 = load double, double* %arrayidx17, align 8, !tbaa !7
  %136 = load double, double* %arrayidx89, align 8, !tbaa !7
  %137 = tail call double @llvm.fmuladd.f64(double %neg347, double %136, double %135)
  store double %137, double* %arrayidx17, align 8, !tbaa !7
  %138 = load double, double* %r, align 8, !tbaa !7
  %139 = load double, double* %arrayidx96, align 8, !tbaa !7
  %140 = tail call double @llvm.fmuladd.f64(double %neg347, double %139, double %138)
  store double %140, double* %r, align 8, !tbaa !7
  %141 = load double, double* %arrayidx34, align 8, !tbaa !7
  %142 = load double, double* %arrayidx42, align 8, !tbaa !7
  %143 = load double, double* %arrayidx81, align 8, !tbaa !7
  %neg370 = fneg double %141
  %144 = tail call double @llvm.fmuladd.f64(double %neg370, double %143, double %142)
  store double %144, double* %arrayidx42, align 8, !tbaa !7
  %145 = load double, double* %arrayidx50, align 8, !tbaa !7
  %146 = load double, double* %arrayidx89, align 8, !tbaa !7
  %147 = tail call double @llvm.fmuladd.f64(double %neg370, double %146, double %145)
  store double %147, double* %arrayidx50, align 8, !tbaa !7
  %148 = load double, double* %arrayidx57, align 8, !tbaa !7
  %149 = load double, double* %arrayidx96, align 8, !tbaa !7
  %150 = tail call double @llvm.fmuladd.f64(double %neg370, double %149, double %148)
  store double %150, double* %arrayidx57, align 8, !tbaa !7
  %151 = load double, double* %arrayidx112, align 8, !tbaa !7
  %152 = load double, double* %arrayidx120, align 8, !tbaa !7
  %153 = load double, double* %arrayidx81, align 8, !tbaa !7
  %neg393 = fneg double %151
  %154 = tail call double @llvm.fmuladd.f64(double %neg393, double %153, double %152)
  store double %154, double* %arrayidx120, align 8, !tbaa !7
  %155 = load double, double* %arrayidx128, align 8, !tbaa !7
  %156 = load double, double* %arrayidx89, align 8, !tbaa !7
  %157 = tail call double @llvm.fmuladd.f64(double %neg393, double %156, double %155)
  store double %157, double* %arrayidx128, align 8, !tbaa !7
  %158 = load double, double* %arrayidx135, align 8, !tbaa !7
  %159 = load double, double* %arrayidx96, align 8, !tbaa !7
  %160 = tail call double @llvm.fmuladd.f64(double %neg393, double %159, double %158)
  store double %160, double* %arrayidx135, align 8, !tbaa !7
  %161 = load double, double* %arrayidx151, align 8, !tbaa !7
  %162 = load double, double* %arrayidx159, align 8, !tbaa !7
  %163 = load double, double* %arrayidx81, align 8, !tbaa !7
  %neg416 = fneg double %161
  %164 = tail call double @llvm.fmuladd.f64(double %neg416, double %163, double %162)
  store double %164, double* %arrayidx159, align 8, !tbaa !7
  %165 = load double, double* %arrayidx167, align 8, !tbaa !7
  %166 = load double, double* %arrayidx89, align 8, !tbaa !7
  %167 = tail call double @llvm.fmuladd.f64(double %neg416, double %166, double %165)
  store double %167, double* %arrayidx167, align 8, !tbaa !7
  %168 = load double, double* %arrayidx174, align 8, !tbaa !7
  %169 = load double, double* %arrayidx96, align 8, !tbaa !7
  %170 = tail call double @llvm.fmuladd.f64(double %neg416, double %169, double %168)
  store double %170, double* %arrayidx174, align 8, !tbaa !7
  %171 = load double, double* %arrayidx120, align 8, !tbaa !7
  %div434 = fdiv double 1.000000e+00, %171
  %172 = load double, double* %arrayidx128, align 8, !tbaa !7
  %mul437 = fmul double %172, %div434
  store double %mul437, double* %arrayidx128, align 8, !tbaa !7
  %173 = load double, double* %arrayidx135, align 8, !tbaa !7
  %mul441 = fmul double %div434, %173
  store double %mul441, double* %arrayidx135, align 8, !tbaa !7
  %174 = load double, double* %arrayidx12, align 8, !tbaa !7
  %175 = load double, double* %arrayidx17, align 8, !tbaa !7
  %176 = load double, double* %arrayidx128, align 8, !tbaa !7
  %neg450 = fneg double %174
  %177 = tail call double @llvm.fmuladd.f64(double %neg450, double %176, double %175)
  store double %177, double* %arrayidx17, align 8, !tbaa !7
  %178 = load double, double* %r, align 8, !tbaa !7
  %179 = load double, double* %arrayidx135, align 8, !tbaa !7
  %180 = tail call double @llvm.fmuladd.f64(double %neg450, double %179, double %178)
  store double %180, double* %r, align 8, !tbaa !7
  %181 = load double, double* %arrayidx42, align 8, !tbaa !7
  %182 = load double, double* %arrayidx50, align 8, !tbaa !7
  %183 = load double, double* %arrayidx128, align 8, !tbaa !7
  %neg465 = fneg double %181
  %184 = tail call double @llvm.fmuladd.f64(double %neg465, double %183, double %182)
  store double %184, double* %arrayidx50, align 8, !tbaa !7
  %185 = load double, double* %arrayidx57, align 8, !tbaa !7
  %186 = load double, double* %arrayidx135, align 8, !tbaa !7
  %187 = tail call double @llvm.fmuladd.f64(double %neg465, double %186, double %185)
  store double %187, double* %arrayidx57, align 8, !tbaa !7
  %188 = load double, double* %arrayidx81, align 8, !tbaa !7
  %189 = load double, double* %arrayidx89, align 8, !tbaa !7
  %190 = load double, double* %arrayidx128, align 8, !tbaa !7
  %neg480 = fneg double %188
  %191 = tail call double @llvm.fmuladd.f64(double %neg480, double %190, double %189)
  store double %191, double* %arrayidx89, align 8, !tbaa !7
  %192 = load double, double* %arrayidx96, align 8, !tbaa !7
  %193 = load double, double* %arrayidx135, align 8, !tbaa !7
  %194 = tail call double @llvm.fmuladd.f64(double %neg480, double %193, double %192)
  store double %194, double* %arrayidx96, align 8, !tbaa !7
  %195 = load double, double* %arrayidx159, align 8, !tbaa !7
  %196 = load double, double* %arrayidx167, align 8, !tbaa !7
  %197 = load double, double* %arrayidx128, align 8, !tbaa !7
  %neg495 = fneg double %195
  %198 = tail call double @llvm.fmuladd.f64(double %neg495, double %197, double %196)
  store double %198, double* %arrayidx167, align 8, !tbaa !7
  %199 = load double, double* %arrayidx174, align 8, !tbaa !7
  %200 = load double, double* %arrayidx135, align 8, !tbaa !7
  %201 = tail call double @llvm.fmuladd.f64(double %neg495, double %200, double %199)
  store double %201, double* %arrayidx174, align 8, !tbaa !7
  %202 = load double, double* %arrayidx167, align 8, !tbaa !7
  %div505 = fdiv double 1.000000e+00, %202
  %mul507 = fmul double %201, %div505
  store double %mul507, double* %arrayidx174, align 8, !tbaa !7
  %203 = load double, double* %arrayidx17, align 8, !tbaa !7
  %204 = load double, double* %r, align 8, !tbaa !7
  %neg514 = fneg double %203
  %205 = tail call double @llvm.fmuladd.f64(double %neg514, double %mul507, double %204)
  store double %205, double* %r, align 8, !tbaa !7
  %206 = load double, double* %arrayidx50, align 8, !tbaa !7
  %207 = load double, double* %arrayidx57, align 8, !tbaa !7
  %neg521 = fneg double %206
  %208 = tail call double @llvm.fmuladd.f64(double %neg521, double %mul507, double %207)
  store double %208, double* %arrayidx57, align 8, !tbaa !7
  %209 = load double, double* %arrayidx89, align 8, !tbaa !7
  %210 = load double, double* %arrayidx96, align 8, !tbaa !7
  %neg528 = fneg double %209
  %211 = tail call double @llvm.fmuladd.f64(double %neg528, double %mul507, double %210)
  store double %211, double* %arrayidx96, align 8, !tbaa !7
  %212 = load double, double* %arrayidx128, align 8, !tbaa !7
  %neg535 = fneg double %212
  %213 = tail call double @llvm.fmuladd.f64(double %neg535, double %mul507, double %200)
  store double %213, double* %arrayidx135, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @load_matrix([5 x double]* %p_matrix, [5 x double]* readonly %g_matrix) local_unnamed_addr #4 {
entry:
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 0
  %0 = load double, double* %arrayidx1, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 0
  store double %0, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 1
  %1 = load double, double* %arrayidx5, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 1
  store double %1, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 2
  %2 = load double, double* %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 2
  store double %2, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 3
  %3 = load double, double* %arrayidx13, align 8, !tbaa !7
  %arrayidx15 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 3
  store double %3, double* %arrayidx15, align 8, !tbaa !7
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 4
  %4 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 4
  store double %4, double* %arrayidx19, align 8, !tbaa !7
  %arrayidx21 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 0
  %5 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 0
  store double %5, double* %arrayidx23, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 1
  %6 = load double, double* %arrayidx25, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 1
  store double %6, double* %arrayidx27, align 8, !tbaa !7
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 2
  %7 = load double, double* %arrayidx29, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 2
  store double %7, double* %arrayidx31, align 8, !tbaa !7
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 3
  %8 = load double, double* %arrayidx33, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 3
  store double %8, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx37 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 4
  %9 = load double, double* %arrayidx37, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 4
  store double %9, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx41 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 0
  %10 = load double, double* %arrayidx41, align 8, !tbaa !7
  %arrayidx43 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 0
  store double %10, double* %arrayidx43, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 1
  %11 = load double, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx47 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 1
  store double %11, double* %arrayidx47, align 8, !tbaa !7
  %arrayidx49 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 2
  %12 = load double, double* %arrayidx49, align 8, !tbaa !7
  %arrayidx51 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 2
  store double %12, double* %arrayidx51, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 3
  %13 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx55 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 3
  store double %13, double* %arrayidx55, align 8, !tbaa !7
  %arrayidx57 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 4
  %14 = load double, double* %arrayidx57, align 8, !tbaa !7
  %arrayidx59 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 4
  store double %14, double* %arrayidx59, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 0
  %15 = load double, double* %arrayidx61, align 8, !tbaa !7
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 0
  store double %15, double* %arrayidx63, align 8, !tbaa !7
  %arrayidx65 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 1
  %16 = load double, double* %arrayidx65, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 1
  store double %16, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx69 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 2
  %17 = load double, double* %arrayidx69, align 8, !tbaa !7
  %arrayidx71 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 2
  store double %17, double* %arrayidx71, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 3
  %18 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 3
  store double %18, double* %arrayidx75, align 8, !tbaa !7
  %arrayidx77 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 4
  %19 = load double, double* %arrayidx77, align 8, !tbaa !7
  %arrayidx79 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 4
  store double %19, double* %arrayidx79, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 0
  %20 = load double, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx83 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 0
  store double %20, double* %arrayidx83, align 8, !tbaa !7
  %arrayidx85 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 1
  %21 = load double, double* %arrayidx85, align 8, !tbaa !7
  %arrayidx87 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 1
  store double %21, double* %arrayidx87, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 2
  %22 = load double, double* %arrayidx89, align 8, !tbaa !7
  %arrayidx91 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 2
  store double %22, double* %arrayidx91, align 8, !tbaa !7
  %arrayidx93 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 3
  %23 = load double, double* %arrayidx93, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 3
  store double %23, double* %arrayidx95, align 8, !tbaa !7
  %arrayidx97 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 4
  %24 = load double, double* %arrayidx97, align 8, !tbaa !7
  %arrayidx99 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 4
  store double %24, double* %arrayidx99, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @save_matrix([5 x double]* %g_matrix, [5 x double]* readonly %p_matrix) local_unnamed_addr #4 {
entry:
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 0
  %0 = load double, double* %arrayidx1, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 0
  store double %0, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 1
  %1 = load double, double* %arrayidx5, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 1
  store double %1, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 2
  %2 = load double, double* %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 2
  store double %2, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 3
  %3 = load double, double* %arrayidx13, align 8, !tbaa !7
  %arrayidx15 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 3
  store double %3, double* %arrayidx15, align 8, !tbaa !7
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 4
  %4 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 0, i64 4
  store double %4, double* %arrayidx19, align 8, !tbaa !7
  %arrayidx21 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 0
  %5 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 0
  store double %5, double* %arrayidx23, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 1
  %6 = load double, double* %arrayidx25, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 1
  store double %6, double* %arrayidx27, align 8, !tbaa !7
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 2
  %7 = load double, double* %arrayidx29, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 2
  store double %7, double* %arrayidx31, align 8, !tbaa !7
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 3
  %8 = load double, double* %arrayidx33, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 3
  store double %8, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx37 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 4
  %9 = load double, double* %arrayidx37, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 1, i64 4
  store double %9, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx41 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 0
  %10 = load double, double* %arrayidx41, align 8, !tbaa !7
  %arrayidx43 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 0
  store double %10, double* %arrayidx43, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 1
  %11 = load double, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx47 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 1
  store double %11, double* %arrayidx47, align 8, !tbaa !7
  %arrayidx49 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 2
  %12 = load double, double* %arrayidx49, align 8, !tbaa !7
  %arrayidx51 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 2
  store double %12, double* %arrayidx51, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 3
  %13 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx55 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 3
  store double %13, double* %arrayidx55, align 8, !tbaa !7
  %arrayidx57 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 4
  %14 = load double, double* %arrayidx57, align 8, !tbaa !7
  %arrayidx59 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 2, i64 4
  store double %14, double* %arrayidx59, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 0
  %15 = load double, double* %arrayidx61, align 8, !tbaa !7
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 0
  store double %15, double* %arrayidx63, align 8, !tbaa !7
  %arrayidx65 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 1
  %16 = load double, double* %arrayidx65, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 1
  store double %16, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx69 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 2
  %17 = load double, double* %arrayidx69, align 8, !tbaa !7
  %arrayidx71 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 2
  store double %17, double* %arrayidx71, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 3
  %18 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 3
  store double %18, double* %arrayidx75, align 8, !tbaa !7
  %arrayidx77 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 4
  %19 = load double, double* %arrayidx77, align 8, !tbaa !7
  %arrayidx79 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 3, i64 4
  store double %19, double* %arrayidx79, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 0
  %20 = load double, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx83 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 0
  store double %20, double* %arrayidx83, align 8, !tbaa !7
  %arrayidx85 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 1
  %21 = load double, double* %arrayidx85, align 8, !tbaa !7
  %arrayidx87 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 1
  store double %21, double* %arrayidx87, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 2
  %22 = load double, double* %arrayidx89, align 8, !tbaa !7
  %arrayidx91 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 2
  store double %22, double* %arrayidx91, align 8, !tbaa !7
  %arrayidx93 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 3
  %23 = load double, double* %arrayidx93, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 3
  store double %23, double* %arrayidx95, align 8, !tbaa !7
  %arrayidx97 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 4
  %24 = load double, double* %arrayidx97, align 8, !tbaa !7
  %arrayidx99 = getelementptr inbounds [5 x double], [5 x double]* %g_matrix, i64 4, i64 4
  store double %24, double* %arrayidx99, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @copy_matrix([5 x double]* %p_matrix, [5 x double]* readonly %p_source) local_unnamed_addr #4 {
entry:
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 0, i64 0
  %0 = load double, double* %arrayidx1, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 0
  store double %0, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 0, i64 1
  %1 = load double, double* %arrayidx5, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 1
  store double %1, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 0, i64 2
  %2 = load double, double* %arrayidx9, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 2
  store double %2, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 0, i64 3
  %3 = load double, double* %arrayidx13, align 8, !tbaa !7
  %arrayidx15 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 3
  store double %3, double* %arrayidx15, align 8, !tbaa !7
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 0, i64 4
  %4 = load double, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 0, i64 4
  store double %4, double* %arrayidx19, align 8, !tbaa !7
  %arrayidx21 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 1, i64 0
  %5 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 0
  store double %5, double* %arrayidx23, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 1, i64 1
  %6 = load double, double* %arrayidx25, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 1
  store double %6, double* %arrayidx27, align 8, !tbaa !7
  %arrayidx29 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 1, i64 2
  %7 = load double, double* %arrayidx29, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 2
  store double %7, double* %arrayidx31, align 8, !tbaa !7
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 1, i64 3
  %8 = load double, double* %arrayidx33, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 3
  store double %8, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx37 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 1, i64 4
  %9 = load double, double* %arrayidx37, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 1, i64 4
  store double %9, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx41 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 2, i64 0
  %10 = load double, double* %arrayidx41, align 8, !tbaa !7
  %arrayidx43 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 0
  store double %10, double* %arrayidx43, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 2, i64 1
  %11 = load double, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx47 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 1
  store double %11, double* %arrayidx47, align 8, !tbaa !7
  %arrayidx49 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 2, i64 2
  %12 = load double, double* %arrayidx49, align 8, !tbaa !7
  %arrayidx51 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 2
  store double %12, double* %arrayidx51, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 2, i64 3
  %13 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx55 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 3
  store double %13, double* %arrayidx55, align 8, !tbaa !7
  %arrayidx57 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 2, i64 4
  %14 = load double, double* %arrayidx57, align 8, !tbaa !7
  %arrayidx59 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 2, i64 4
  store double %14, double* %arrayidx59, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 3, i64 0
  %15 = load double, double* %arrayidx61, align 8, !tbaa !7
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 0
  store double %15, double* %arrayidx63, align 8, !tbaa !7
  %arrayidx65 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 3, i64 1
  %16 = load double, double* %arrayidx65, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 1
  store double %16, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx69 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 3, i64 2
  %17 = load double, double* %arrayidx69, align 8, !tbaa !7
  %arrayidx71 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 2
  store double %17, double* %arrayidx71, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 3, i64 3
  %18 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 3
  store double %18, double* %arrayidx75, align 8, !tbaa !7
  %arrayidx77 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 3, i64 4
  %19 = load double, double* %arrayidx77, align 8, !tbaa !7
  %arrayidx79 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 3, i64 4
  store double %19, double* %arrayidx79, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 4, i64 0
  %20 = load double, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx83 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 0
  store double %20, double* %arrayidx83, align 8, !tbaa !7
  %arrayidx85 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 4, i64 1
  %21 = load double, double* %arrayidx85, align 8, !tbaa !7
  %arrayidx87 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 1
  store double %21, double* %arrayidx87, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 4, i64 2
  %22 = load double, double* %arrayidx89, align 8, !tbaa !7
  %arrayidx91 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 2
  store double %22, double* %arrayidx91, align 8, !tbaa !7
  %arrayidx93 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 4, i64 3
  %23 = load double, double* %arrayidx93, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 3
  store double %23, double* %arrayidx95, align 8, !tbaa !7
  %arrayidx97 = getelementptr inbounds [5 x double], [5 x double]* %p_source, i64 4, i64 4
  %24 = load double, double* %arrayidx97, align 8, !tbaa !7
  %arrayidx99 = getelementptr inbounds [5 x double], [5 x double]* %p_matrix, i64 4, i64 4
  store double %24, double* %arrayidx99, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @load_vector(double* nocapture %p_vector, double* nocapture readonly %g_vector) local_unnamed_addr #4 {
entry:
  %0 = load double, double* %g_vector, align 8, !tbaa !7
  store double %0, double* %p_vector, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds double, double* %g_vector, i64 1
  %1 = load double, double* %arrayidx2, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds double, double* %p_vector, i64 1
  store double %1, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds double, double* %g_vector, i64 2
  %2 = load double, double* %arrayidx4, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds double, double* %p_vector, i64 2
  store double %2, double* %arrayidx5, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds double, double* %g_vector, i64 3
  %3 = load double, double* %arrayidx6, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds double, double* %p_vector, i64 3
  store double %3, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx8 = getelementptr inbounds double, double* %g_vector, i64 4
  %4 = load double, double* %arrayidx8, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds double, double* %p_vector, i64 4
  store double %4, double* %arrayidx9, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @save_vector(double* nocapture %g_vector, double* nocapture readonly %p_vector) local_unnamed_addr #4 {
entry:
  %0 = load double, double* %p_vector, align 8, !tbaa !7
  store double %0, double* %g_vector, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds double, double* %p_vector, i64 1
  %1 = load double, double* %arrayidx2, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds double, double* %g_vector, i64 1
  store double %1, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds double, double* %p_vector, i64 2
  %2 = load double, double* %arrayidx4, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds double, double* %g_vector, i64 2
  store double %2, double* %arrayidx5, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds double, double* %p_vector, i64 3
  %3 = load double, double* %arrayidx6, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds double, double* %g_vector, i64 3
  store double %3, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx8 = getelementptr inbounds double, double* %p_vector, i64 4
  %4 = load double, double* %arrayidx8, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds double, double* %g_vector, i64 4
  store double %4, double* %arrayidx9, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @copy_vector(double* nocapture %p_vector, double* nocapture readonly %p_source) local_unnamed_addr #4 {
entry:
  %0 = load double, double* %p_source, align 8, !tbaa !7
  store double %0, double* %p_vector, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds double, double* %p_source, i64 1
  %1 = load double, double* %arrayidx2, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds double, double* %p_vector, i64 1
  store double %1, double* %arrayidx3, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds double, double* %p_source, i64 2
  %2 = load double, double* %arrayidx4, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds double, double* %p_vector, i64 2
  store double %2, double* %arrayidx5, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds double, double* %p_source, i64 3
  %3 = load double, double* %arrayidx6, align 8, !tbaa !7
  %arrayidx7 = getelementptr inbounds double, double* %p_vector, i64 3
  store double %3, double* %arrayidx7, align 8, !tbaa !7
  %arrayidx8 = getelementptr inbounds double, double* %p_source, i64 4
  %4 = load double, double* %arrayidx8, align 8, !tbaa !7
  %arrayidx9 = getelementptr inbounds double, double* %p_vector, i64 4
  store double %4, double* %arrayidx9, align 8, !tbaa !7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @x_solve1(double* nocapture readonly %g_qs, double* nocapture readonly %g_rho_i, double* nocapture readonly %g_square, double* nocapture readonly %g_u, double* %g_fjac, double* %g_njac, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !23 !kernel_arg_access_qual !24 !kernel_arg_type !25 !kernel_arg_base_type !25 !kernel_arg_type_qual !26 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv5 = trunc i64 %call4 to i32
  %sub7 = add nsw i32 %gp1, -2
  %cmp8 = icmp sle i32 %conv3, %sub7
  %cmp11.not = icmp slt i32 %conv5, %gp0
  %or.cond = and i1 %cmp8, %cmp11.not
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast double* %g_qs to [163 x [163 x double]]*
  %3 = bitcast double* %g_rho_i to [163 x [163 x double]]*
  %4 = bitcast double* %g_square to [163 x [163 x double]]*
  %5 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %mul = mul nsw i32 %sub7, %0
  %add16 = add nsw i32 %mul, %1
  %mul19 = mul i32 %add16, 4075
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds double, double* %g_fjac, i64 %idxprom
  %6 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx21 = getelementptr inbounds double, double* %g_njac, i64 %idxprom
  %7 = bitcast double* %arrayidx21 to [5 x [5 x double]]*
  %idxprom22 = sext i32 %conv to i64
  %idxprom24 = sext i32 %conv3 to i64
  %sext = shl i64 %call4, 32
  %idxprom26 = ashr exact i64 %sext, 32
  %arrayidx27 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %8 = load double, double* %arrayidx27, align 8, !tbaa !7
  %mul28 = fmul double %8, %8
  %mul29 = fmul double %8, %mul28
  %arrayidx36 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 0
  %9 = load double, double* %arrayidx36, align 8, !tbaa !7
  %arrayidx44 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 1
  %10 = load double, double* %arrayidx44, align 8, !tbaa !7
  %arrayidx52 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 2
  %11 = load double, double* %arrayidx52, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 3
  %12 = load double, double* %arrayidx60, align 8, !tbaa !7
  %arrayidx68 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 4
  %13 = load double, double* %arrayidx68, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx77 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 1, i64 0
  store double 1.000000e+00, double* %arrayidx77, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx85 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx85, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx89, align 8, !tbaa !7
  %mul91 = fmul double %mul28, %10
  %14 = fneg double %mul91
  %fneg = fmul double %10, %14
  %arrayidx99 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %15 = load double, double* %arrayidx99, align 8, !tbaa !7
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 4.000000e-01, double %fneg)
  %arrayidx104 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 0, i64 1
  store double %16, double* %arrayidx104, align 8, !tbaa !7
  %div = fdiv double %10, %9
  %mul107 = fmul double %div, 1.600000e+00
  %arrayidx111 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 1, i64 1
  store double %mul107, double* %arrayidx111, align 8, !tbaa !7
  %mul113 = fmul double %8, %11
  %mul114 = fmul double %mul113, -4.000000e-01
  %arrayidx118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 2, i64 1
  store double %mul114, double* %arrayidx118, align 8, !tbaa !7
  %mul120 = fmul double %8, %12
  %mul121 = fmul double %mul120, -4.000000e-01
  %arrayidx125 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 3, i64 1
  store double %mul121, double* %arrayidx125, align 8, !tbaa !7
  %arrayidx129 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 4, i64 1
  store double 4.000000e-01, double* %arrayidx129, align 8, !tbaa !7
  %mul132 = fmul double %10, %11
  %fneg133 = fneg double %mul132
  %mul134 = fmul double %mul28, %fneg133
  %arrayidx138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 0, i64 2
  store double %mul134, double* %arrayidx138, align 8, !tbaa !7
  %arrayidx144 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 1, i64 2
  store double %mul113, double* %arrayidx144, align 8, !tbaa !7
  %mul146 = fmul double %8, %10
  %arrayidx150 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 2, i64 2
  store double %mul146, double* %arrayidx150, align 8, !tbaa !7
  %arrayidx154 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx154, align 8, !tbaa !7
  %arrayidx158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx158, align 8, !tbaa !7
  %mul161 = fmul double %10, %12
  %fneg162 = fneg double %mul161
  %mul163 = fmul double %mul28, %fneg162
  %arrayidx167 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 0, i64 3
  store double %mul163, double* %arrayidx167, align 8, !tbaa !7
  %arrayidx173 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 1, i64 3
  store double %mul120, double* %arrayidx173, align 8, !tbaa !7
  %arrayidx177 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx177, align 8, !tbaa !7
  %arrayidx183 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 3, i64 3
  store double %mul146, double* %arrayidx183, align 8, !tbaa !7
  %arrayidx187 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx187, align 8, !tbaa !7
  %arrayidx193 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %17 = load double, double* %arrayidx193, align 8, !tbaa !7
  %mul196 = fmul double %13, 1.400000e+00
  %neg = fneg double %mul196
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 8.000000e-01, double %neg)
  %mul199 = fmul double %mul91, %18
  %arrayidx203 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 0, i64 4
  store double %mul199, double* %arrayidx203, align 8, !tbaa !7
  %mul209 = fmul double %10, %10
  %19 = load double, double* %arrayidx99, align 8, !tbaa !7
  %20 = tail call double @llvm.fmuladd.f64(double %mul209, double %mul28, double %19)
  %neg218 = fmul double %20, -4.000000e-01
  %21 = tail call double @llvm.fmuladd.f64(double %mul196, double %8, double %neg218)
  %arrayidx222 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 1, i64 4
  store double %21, double* %arrayidx222, align 8, !tbaa !7
  %mul226 = fmul double %mul132, -4.000000e-01
  %mul227 = fmul double %mul28, %mul226
  %arrayidx231 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 2, i64 4
  store double %mul227, double* %arrayidx231, align 8, !tbaa !7
  %mul235 = fmul double %mul161, -4.000000e-01
  %mul236 = fmul double %mul28, %mul235
  %arrayidx240 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 3, i64 4
  store double %mul236, double* %arrayidx240, align 8, !tbaa !7
  %mul243 = fmul double %mul146, 1.400000e+00
  %arrayidx247 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom26, i64 4, i64 4
  store double %mul243, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx251 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx251, align 8, !tbaa !7
  %arrayidx255 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx255, align 8, !tbaa !7
  %arrayidx259 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx259, align 8, !tbaa !7
  %arrayidx263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx263, align 8, !tbaa !7
  %arrayidx267 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx267, align 8, !tbaa !7
  %mul268 = fmul double %mul28, 0xBFC1111111111111
  %mul270 = fmul double %mul268, %10
  %arrayidx274 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 0, i64 1
  store double %mul270, double* %arrayidx274, align 8, !tbaa !7
  %mul275 = fmul double %8, 0x3FC1111111111111
  %arrayidx279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 1, i64 1
  store double %mul275, double* %arrayidx279, align 8, !tbaa !7
  %arrayidx283 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx287 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx287, align 8, !tbaa !7
  %arrayidx291 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx291, align 8, !tbaa !7
  %mul292 = fmul double %mul28, -1.000000e-01
  %mul294 = fmul double %mul292, %11
  %arrayidx298 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 0, i64 2
  store double %mul294, double* %arrayidx298, align 8, !tbaa !7
  %arrayidx302 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx302, align 8, !tbaa !7
  %mul303 = fmul double %8, 1.000000e-01
  %arrayidx307 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 2, i64 2
  store double %mul303, double* %arrayidx307, align 8, !tbaa !7
  %arrayidx311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx311, align 8, !tbaa !7
  %arrayidx315 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx315, align 8, !tbaa !7
  %mul318 = fmul double %mul292, %12
  %arrayidx322 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 0, i64 3
  store double %mul318, double* %arrayidx322, align 8, !tbaa !7
  %arrayidx326 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx326, align 8, !tbaa !7
  %arrayidx330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx330, align 8, !tbaa !7
  %arrayidx335 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 3, i64 3
  store double %mul303, double* %arrayidx335, align 8, !tbaa !7
  %arrayidx339 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx339, align 8, !tbaa !7
  %mul340 = fmul double %mul29, 0x3FB00AEC33E1F670
  %mul348 = fmul double %11, %11
  %22 = fmul double %mul29, 0x3FB89374BC6A7EF8
  %neg350 = fmul double %22, %mul348
  %23 = tail call double @llvm.fmuladd.f64(double %mul340, double %mul209, double %neg350)
  %mul354 = fmul double %12, %12
  %24 = tail call double @llvm.fmuladd.f64(double %22, double %mul354, double %23)
  %neg360 = fmul double %mul28, 0xBFC916872B020C49
  %25 = tail call double @llvm.fmuladd.f64(double %neg360, double %13, double %24)
  %arrayidx364 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 0, i64 4
  store double %25, double* %arrayidx364, align 8, !tbaa !7
  %mul365 = fmul double %mul28, 0xBFB00AEC33E1F670
  %mul367 = fmul double %mul365, %10
  %arrayidx371 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 1, i64 4
  store double %mul367, double* %arrayidx371, align 8, !tbaa !7
  %mul372 = fmul double %mul28, 0xBFB89374BC6A7EF8
  %mul374 = fmul double %mul372, %11
  %arrayidx378 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 2, i64 4
  store double %mul374, double* %arrayidx378, align 8, !tbaa !7
  %mul381 = fmul double %mul372, %12
  %arrayidx385 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 3, i64 4
  store double %mul381, double* %arrayidx385, align 8, !tbaa !7
  %mul386 = fmul double %8, 0x3FC916872B020C49
  %arrayidx390 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom26, i64 4, i64 4
  store double %mul386, double* %arrayidx390, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable writeonly
define dso_local spir_kernel void @x_solve2(double* nocapture %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #5 !kernel_arg_addr_space !19 !kernel_arg_access_qual !20 !kernel_arg_type !21 !kernel_arg_base_type !21 !kernel_arg_type_qual !22 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub5 = add nsw i32 %gp1, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call8 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %conv9 = trunc i64 %call8 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  %sub13 = add nsw i32 %gp0, -1
  %spec.select = select i1 %cmp10, i32 %sub13, i32 %conv9
  %mul = mul nsw i32 %sub5, %0
  %add18 = add nsw i32 %mul, %1
  %mul22 = mul i32 %add18, 12225
  %idxprom = sext i32 %mul22 to i64
  %arrayidx = getelementptr inbounds double, double* %g_lhs, i64 %idxprom
  %2 = bitcast double* %arrayidx to [3 x [5 x [5 x double]]]*
  %idxprom29 = sext i32 %spec.select to i64
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %if.end, %for.cond25.preheader
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.cond25.preheader ]
  %arrayidx35 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx42 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !7
  %arrayidx49 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx49, align 8, !tbaa !7
  %arrayidx35.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx35.1, align 8, !tbaa !7
  %arrayidx42.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx42.1, align 8, !tbaa !7
  %arrayidx49.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx49.1, align 8, !tbaa !7
  %arrayidx35.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx35.2, align 8, !tbaa !7
  %arrayidx42.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx42.2, align 8, !tbaa !7
  %arrayidx49.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx49.2, align 8, !tbaa !7
  %arrayidx35.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx35.3, align 8, !tbaa !7
  %arrayidx42.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx42.3, align 8, !tbaa !7
  %arrayidx49.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx49.3, align 8, !tbaa !7
  %arrayidx35.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx35.4, align 8, !tbaa !7
  %arrayidx42.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx42.4, align 8, !tbaa !7
  %arrayidx49.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx49.4, align 8, !tbaa !7
  %arrayidx56 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx56, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %cleanup, label %for.cond25.preheader

cleanup:                                          ; preds = %for.cond25.preheader, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @x_solve3(double* readonly %g_fjac, double* readonly %g_njac, double* %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !27 !kernel_arg_access_qual !28 !kernel_arg_type !29 !kernel_arg_base_type !29 !kernel_arg_type_qual !30 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub8 = add nsw i32 %gp1, -2
  %cmp9 = icmp sgt i32 %conv3, %sub8
  %sub12 = add nsw i32 %gp0, -2
  %cmp13 = icmp sgt i32 %conv6, %sub12
  %or.cond = or i1 %cmp9, %cmp13
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mul = mul nsw i32 %sub8, %0
  %add18 = add nsw i32 %mul, %1
  %mul21 = mul i32 %add18, 4075
  %idxprom = sext i32 %mul21 to i64
  %arrayidx = getelementptr inbounds double, double* %g_fjac, i64 %idxprom
  %3 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx23 = getelementptr inbounds double, double* %g_njac, i64 %idxprom
  %4 = bitcast double* %arrayidx23 to [5 x [5 x double]]*
  %mul27 = mul i32 %add18, 12225
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds double, double* %g_lhs, i64 %idxprom28
  %5 = bitcast double* %arrayidx29 to [3 x [5 x [5 x double]]]*
  %sext = shl i64 %call4, 32
  %idxprom31 = ashr exact i64 %sext, 32
  %arrayidx34 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 0
  %6 = load double, double* %arrayidx34, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 0
  %7 = load double, double* %arrayidx40, align 8, !tbaa !7
  %neg = fmul double %7, 0xC004BC9EECBFB15C
  %8 = tail call double @llvm.fmuladd.f64(double %6, double 0xBF807C84B5DCC63F, double %neg)
  %9 = fadd double %8, 0xBFFF1AEE631F8A0A
  %idxprom44 = sext i32 %conv6 to i64
  %arrayidx48 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 0
  store double %9, double* %arrayidx48, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 0
  %10 = load double, double* %arrayidx54, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 0
  %11 = load double, double* %arrayidx60, align 8, !tbaa !7
  %neg62 = fmul double %11, 0xC004BC9EECBFB15C
  %12 = tail call double @llvm.fmuladd.f64(double %10, double 0xBF807C84B5DCC63F, double %neg62)
  %arrayidx67 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 0
  store double %12, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 0
  %13 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 0
  %14 = load double, double* %arrayidx79, align 8, !tbaa !7
  %neg81 = fmul double %14, 0xC004BC9EECBFB15C
  %15 = tail call double @llvm.fmuladd.f64(double %13, double 0xBF807C84B5DCC63F, double %neg81)
  %arrayidx86 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 0
  store double %15, double* %arrayidx86, align 8, !tbaa !7
  %arrayidx92 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 0
  %16 = load double, double* %arrayidx92, align 8, !tbaa !7
  %arrayidx98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 0
  %17 = load double, double* %arrayidx98, align 8, !tbaa !7
  %neg100 = fmul double %17, 0xC004BC9EECBFB15C
  %18 = tail call double @llvm.fmuladd.f64(double %16, double 0xBF807C84B5DCC63F, double %neg100)
  %arrayidx105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 0
  store double %18, double* %arrayidx105, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 0
  %19 = load double, double* %arrayidx111, align 8, !tbaa !7
  %arrayidx117 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 0
  %20 = load double, double* %arrayidx117, align 8, !tbaa !7
  %neg119 = fmul double %20, 0xC004BC9EECBFB15C
  %21 = tail call double @llvm.fmuladd.f64(double %19, double 0xBF807C84B5DCC63F, double %neg119)
  %arrayidx124 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 0
  store double %21, double* %arrayidx124, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 1
  %22 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 1
  %23 = load double, double* %arrayidx136, align 8, !tbaa !7
  %neg138 = fmul double %23, 0xC004BC9EECBFB15C
  %24 = tail call double @llvm.fmuladd.f64(double %22, double 0xBF807C84B5DCC63F, double %neg138)
  %arrayidx143 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 1
  store double %24, double* %arrayidx143, align 8, !tbaa !7
  %arrayidx149 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 1
  %25 = load double, double* %arrayidx149, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 1
  %26 = load double, double* %arrayidx155, align 8, !tbaa !7
  %neg157 = fmul double %26, 0xC004BC9EECBFB15C
  %27 = tail call double @llvm.fmuladd.f64(double %25, double 0xBF807C84B5DCC63F, double %neg157)
  %28 = fadd double %27, 0xBFFF1AEE631F8A0A
  %arrayidx164 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 1
  store double %28, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 1
  %29 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 1
  %30 = load double, double* %arrayidx176, align 8, !tbaa !7
  %neg178 = fmul double %30, 0xC004BC9EECBFB15C
  %31 = tail call double @llvm.fmuladd.f64(double %29, double 0xBF807C84B5DCC63F, double %neg178)
  %arrayidx183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 1
  store double %31, double* %arrayidx183, align 8, !tbaa !7
  %arrayidx189 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 1
  %32 = load double, double* %arrayidx189, align 8, !tbaa !7
  %arrayidx195 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 1
  %33 = load double, double* %arrayidx195, align 8, !tbaa !7
  %neg197 = fmul double %33, 0xC004BC9EECBFB15C
  %34 = tail call double @llvm.fmuladd.f64(double %32, double 0xBF807C84B5DCC63F, double %neg197)
  %arrayidx202 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 1
  store double %34, double* %arrayidx202, align 8, !tbaa !7
  %arrayidx208 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 1
  %35 = load double, double* %arrayidx208, align 8, !tbaa !7
  %arrayidx214 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 1
  %36 = load double, double* %arrayidx214, align 8, !tbaa !7
  %neg216 = fmul double %36, 0xC004BC9EECBFB15C
  %37 = tail call double @llvm.fmuladd.f64(double %35, double 0xBF807C84B5DCC63F, double %neg216)
  %arrayidx221 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 1
  store double %37, double* %arrayidx221, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 2
  %38 = load double, double* %arrayidx227, align 8, !tbaa !7
  %arrayidx233 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 2
  %39 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg235 = fmul double %39, 0xC004BC9EECBFB15C
  %40 = tail call double @llvm.fmuladd.f64(double %38, double 0xBF807C84B5DCC63F, double %neg235)
  %arrayidx240 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 2
  store double %40, double* %arrayidx240, align 8, !tbaa !7
  %arrayidx246 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 2
  %41 = load double, double* %arrayidx246, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 2
  %42 = load double, double* %arrayidx252, align 8, !tbaa !7
  %neg254 = fmul double %42, 0xC004BC9EECBFB15C
  %43 = tail call double @llvm.fmuladd.f64(double %41, double 0xBF807C84B5DCC63F, double %neg254)
  %arrayidx259 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 2
  store double %43, double* %arrayidx259, align 8, !tbaa !7
  %arrayidx265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 2
  %44 = load double, double* %arrayidx265, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 2
  %45 = load double, double* %arrayidx271, align 8, !tbaa !7
  %neg273 = fmul double %45, 0xC004BC9EECBFB15C
  %46 = tail call double @llvm.fmuladd.f64(double %44, double 0xBF807C84B5DCC63F, double %neg273)
  %47 = fadd double %46, 0xBFFF1AEE631F8A0A
  %arrayidx280 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 2
  store double %47, double* %arrayidx280, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 2
  %48 = load double, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 2
  %49 = load double, double* %arrayidx292, align 8, !tbaa !7
  %neg294 = fmul double %49, 0xC004BC9EECBFB15C
  %50 = tail call double @llvm.fmuladd.f64(double %48, double 0xBF807C84B5DCC63F, double %neg294)
  %arrayidx299 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 2
  store double %50, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx305 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 2
  %51 = load double, double* %arrayidx305, align 8, !tbaa !7
  %arrayidx311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 2
  %52 = load double, double* %arrayidx311, align 8, !tbaa !7
  %neg313 = fmul double %52, 0xC004BC9EECBFB15C
  %53 = tail call double @llvm.fmuladd.f64(double %51, double 0xBF807C84B5DCC63F, double %neg313)
  %arrayidx318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 2
  store double %53, double* %arrayidx318, align 8, !tbaa !7
  %arrayidx324 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 3
  %54 = load double, double* %arrayidx324, align 8, !tbaa !7
  %arrayidx330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 3
  %55 = load double, double* %arrayidx330, align 8, !tbaa !7
  %neg332 = fmul double %55, 0xC004BC9EECBFB15C
  %56 = tail call double @llvm.fmuladd.f64(double %54, double 0xBF807C84B5DCC63F, double %neg332)
  %arrayidx337 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 3
  store double %56, double* %arrayidx337, align 8, !tbaa !7
  %arrayidx343 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 3
  %57 = load double, double* %arrayidx343, align 8, !tbaa !7
  %arrayidx349 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 3
  %58 = load double, double* %arrayidx349, align 8, !tbaa !7
  %neg351 = fmul double %58, 0xC004BC9EECBFB15C
  %59 = tail call double @llvm.fmuladd.f64(double %57, double 0xBF807C84B5DCC63F, double %neg351)
  %arrayidx356 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 3
  store double %59, double* %arrayidx356, align 8, !tbaa !7
  %arrayidx362 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 3
  %60 = load double, double* %arrayidx362, align 8, !tbaa !7
  %arrayidx368 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 3
  %61 = load double, double* %arrayidx368, align 8, !tbaa !7
  %neg370 = fmul double %61, 0xC004BC9EECBFB15C
  %62 = tail call double @llvm.fmuladd.f64(double %60, double 0xBF807C84B5DCC63F, double %neg370)
  %arrayidx375 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 3
  store double %62, double* %arrayidx375, align 8, !tbaa !7
  %arrayidx381 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 3
  %63 = load double, double* %arrayidx381, align 8, !tbaa !7
  %arrayidx387 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 3
  %64 = load double, double* %arrayidx387, align 8, !tbaa !7
  %neg389 = fmul double %64, 0xC004BC9EECBFB15C
  %65 = tail call double @llvm.fmuladd.f64(double %63, double 0xBF807C84B5DCC63F, double %neg389)
  %66 = fadd double %65, 0xBFFF1AEE631F8A0A
  %arrayidx396 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 3
  store double %66, double* %arrayidx396, align 8, !tbaa !7
  %arrayidx402 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 3
  %67 = load double, double* %arrayidx402, align 8, !tbaa !7
  %arrayidx408 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 3
  %68 = load double, double* %arrayidx408, align 8, !tbaa !7
  %neg410 = fmul double %68, 0xC004BC9EECBFB15C
  %69 = tail call double @llvm.fmuladd.f64(double %67, double 0xBF807C84B5DCC63F, double %neg410)
  %arrayidx415 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 3
  store double %69, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 4
  %70 = load double, double* %arrayidx421, align 8, !tbaa !7
  %arrayidx427 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 4
  %71 = load double, double* %arrayidx427, align 8, !tbaa !7
  %neg429 = fmul double %71, 0xC004BC9EECBFB15C
  %72 = tail call double @llvm.fmuladd.f64(double %70, double 0xBF807C84B5DCC63F, double %neg429)
  %arrayidx434 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 4
  store double %72, double* %arrayidx434, align 8, !tbaa !7
  %arrayidx440 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 4
  %73 = load double, double* %arrayidx440, align 8, !tbaa !7
  %arrayidx446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 4
  %74 = load double, double* %arrayidx446, align 8, !tbaa !7
  %neg448 = fmul double %74, 0xC004BC9EECBFB15C
  %75 = tail call double @llvm.fmuladd.f64(double %73, double 0xBF807C84B5DCC63F, double %neg448)
  %arrayidx453 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 4
  store double %75, double* %arrayidx453, align 8, !tbaa !7
  %arrayidx459 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 4
  %76 = load double, double* %arrayidx459, align 8, !tbaa !7
  %arrayidx465 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 4
  %77 = load double, double* %arrayidx465, align 8, !tbaa !7
  %neg467 = fmul double %77, 0xC004BC9EECBFB15C
  %78 = tail call double @llvm.fmuladd.f64(double %76, double 0xBF807C84B5DCC63F, double %neg467)
  %arrayidx472 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 4
  store double %78, double* %arrayidx472, align 8, !tbaa !7
  %arrayidx478 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 4
  %79 = load double, double* %arrayidx478, align 8, !tbaa !7
  %arrayidx484 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 4
  %80 = load double, double* %arrayidx484, align 8, !tbaa !7
  %neg486 = fmul double %80, 0xC004BC9EECBFB15C
  %81 = tail call double @llvm.fmuladd.f64(double %79, double 0xBF807C84B5DCC63F, double %neg486)
  %arrayidx491 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 4
  store double %81, double* %arrayidx491, align 8, !tbaa !7
  %arrayidx497 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 4
  %82 = load double, double* %arrayidx497, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 4
  %83 = load double, double* %arrayidx503, align 8, !tbaa !7
  %neg505 = fmul double %83, 0xC004BC9EECBFB15C
  %84 = tail call double @llvm.fmuladd.f64(double %82, double 0xBF807C84B5DCC63F, double %neg505)
  %85 = fadd double %84, 0xBFFF1AEE631F8A0A
  %arrayidx512 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 4
  store double %85, double* %arrayidx512, align 8, !tbaa !7
  %arrayidx517 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 0
  %86 = load double, double* %arrayidx517, align 8, !tbaa !7
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %88 = fadd double %87, 0x400F1AEE631F8A0A
  %arrayidx525 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 0
  store double %88, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx530 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 0
  %89 = load double, double* %arrayidx530, align 8, !tbaa !7
  %mul531 = fmul double %89, 0x4014BC9EECBFB15C
  %arrayidx536 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 0
  store double %mul531, double* %arrayidx536, align 8, !tbaa !7
  %arrayidx541 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 0
  %90 = load double, double* %arrayidx541, align 8, !tbaa !7
  %mul542 = fmul double %90, 0x4014BC9EECBFB15C
  %arrayidx547 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 0
  store double %mul542, double* %arrayidx547, align 8, !tbaa !7
  %arrayidx552 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 0
  %91 = load double, double* %arrayidx552, align 8, !tbaa !7
  %mul553 = fmul double %91, 0x4014BC9EECBFB15C
  %arrayidx558 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 0
  store double %mul553, double* %arrayidx558, align 8, !tbaa !7
  %arrayidx563 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 0
  %92 = load double, double* %arrayidx563, align 8, !tbaa !7
  %mul564 = fmul double %92, 0x4014BC9EECBFB15C
  %arrayidx569 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 0
  store double %mul564, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx574 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 1
  %93 = load double, double* %arrayidx574, align 8, !tbaa !7
  %mul575 = fmul double %93, 0x4014BC9EECBFB15C
  %arrayidx580 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 1
  store double %mul575, double* %arrayidx580, align 8, !tbaa !7
  %arrayidx585 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 1
  %94 = load double, double* %arrayidx585, align 8, !tbaa !7
  %95 = tail call double @llvm.fmuladd.f64(double %94, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %96 = fadd double %95, 0x400F1AEE631F8A0A
  %arrayidx593 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 1
  store double %96, double* %arrayidx593, align 8, !tbaa !7
  %arrayidx598 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 1
  %97 = load double, double* %arrayidx598, align 8, !tbaa !7
  %mul599 = fmul double %97, 0x4014BC9EECBFB15C
  %arrayidx604 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 1
  store double %mul599, double* %arrayidx604, align 8, !tbaa !7
  %arrayidx609 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 1
  %98 = load double, double* %arrayidx609, align 8, !tbaa !7
  %mul610 = fmul double %98, 0x4014BC9EECBFB15C
  %arrayidx615 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 1
  store double %mul610, double* %arrayidx615, align 8, !tbaa !7
  %arrayidx620 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 1
  %99 = load double, double* %arrayidx620, align 8, !tbaa !7
  %mul621 = fmul double %99, 0x4014BC9EECBFB15C
  %arrayidx626 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 1
  store double %mul621, double* %arrayidx626, align 8, !tbaa !7
  %arrayidx631 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 2
  %100 = load double, double* %arrayidx631, align 8, !tbaa !7
  %mul632 = fmul double %100, 0x4014BC9EECBFB15C
  %arrayidx637 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 2
  store double %mul632, double* %arrayidx637, align 8, !tbaa !7
  %arrayidx642 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 2
  %101 = load double, double* %arrayidx642, align 8, !tbaa !7
  %mul643 = fmul double %101, 0x4014BC9EECBFB15C
  %arrayidx648 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 2
  store double %mul643, double* %arrayidx648, align 8, !tbaa !7
  %arrayidx653 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 2
  %102 = load double, double* %arrayidx653, align 8, !tbaa !7
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %104 = fadd double %103, 0x400F1AEE631F8A0A
  %arrayidx661 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 2
  store double %104, double* %arrayidx661, align 8, !tbaa !7
  %arrayidx666 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 2
  %105 = load double, double* %arrayidx666, align 8, !tbaa !7
  %mul667 = fmul double %105, 0x4014BC9EECBFB15C
  %arrayidx672 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 2
  store double %mul667, double* %arrayidx672, align 8, !tbaa !7
  %arrayidx677 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 2
  %106 = load double, double* %arrayidx677, align 8, !tbaa !7
  %mul678 = fmul double %106, 0x4014BC9EECBFB15C
  %arrayidx683 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 2
  store double %mul678, double* %arrayidx683, align 8, !tbaa !7
  %arrayidx688 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 3
  %107 = load double, double* %arrayidx688, align 8, !tbaa !7
  %mul689 = fmul double %107, 0x4014BC9EECBFB15C
  %arrayidx694 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 3
  store double %mul689, double* %arrayidx694, align 8, !tbaa !7
  %arrayidx699 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 3
  %108 = load double, double* %arrayidx699, align 8, !tbaa !7
  %mul700 = fmul double %108, 0x4014BC9EECBFB15C
  %arrayidx705 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 3
  store double %mul700, double* %arrayidx705, align 8, !tbaa !7
  %arrayidx710 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 3
  %109 = load double, double* %arrayidx710, align 8, !tbaa !7
  %mul711 = fmul double %109, 0x4014BC9EECBFB15C
  %arrayidx716 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 3
  store double %mul711, double* %arrayidx716, align 8, !tbaa !7
  %arrayidx721 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 3
  %110 = load double, double* %arrayidx721, align 8, !tbaa !7
  %111 = tail call double @llvm.fmuladd.f64(double %110, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %112 = fadd double %111, 0x400F1AEE631F8A0A
  %arrayidx729 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 3
  store double %112, double* %arrayidx729, align 8, !tbaa !7
  %arrayidx734 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 3
  %113 = load double, double* %arrayidx734, align 8, !tbaa !7
  %mul735 = fmul double %113, 0x4014BC9EECBFB15C
  %arrayidx740 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 3
  store double %mul735, double* %arrayidx740, align 8, !tbaa !7
  %arrayidx745 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 4
  %114 = load double, double* %arrayidx745, align 8, !tbaa !7
  %mul746 = fmul double %114, 0x4014BC9EECBFB15C
  %arrayidx751 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 4
  store double %mul746, double* %arrayidx751, align 8, !tbaa !7
  %arrayidx756 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 4
  %115 = load double, double* %arrayidx756, align 8, !tbaa !7
  %mul757 = fmul double %115, 0x4014BC9EECBFB15C
  %arrayidx762 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 4
  store double %mul757, double* %arrayidx762, align 8, !tbaa !7
  %arrayidx767 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 4
  %116 = load double, double* %arrayidx767, align 8, !tbaa !7
  %mul768 = fmul double %116, 0x4014BC9EECBFB15C
  %arrayidx773 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 4
  store double %mul768, double* %arrayidx773, align 8, !tbaa !7
  %arrayidx778 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 4
  %117 = load double, double* %arrayidx778, align 8, !tbaa !7
  %mul779 = fmul double %117, 0x4014BC9EECBFB15C
  %arrayidx784 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 4
  store double %mul779, double* %arrayidx784, align 8, !tbaa !7
  %arrayidx789 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 4
  %118 = load double, double* %arrayidx789, align 8, !tbaa !7
  %119 = tail call double @llvm.fmuladd.f64(double %118, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %120 = fadd double %119, 0x400F1AEE631F8A0A
  %arrayidx797 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 4
  store double %120, double* %arrayidx797, align 8, !tbaa !7
  %sext1813 = add i64 %sext, 8589934592
  %idxprom799 = ashr exact i64 %sext1813, 32
  %arrayidx802 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 0
  %121 = load double, double* %arrayidx802, align 8, !tbaa !7
  %arrayidx808 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 0
  %122 = load double, double* %arrayidx808, align 8, !tbaa !7
  %neg810 = fmul double %122, 0xC004BC9EECBFB15C
  %123 = tail call double @llvm.fmuladd.f64(double %121, double 0x3F807C84B5DCC63F, double %neg810)
  %124 = fadd double %123, 0xBFFF1AEE631F8A0A
  %arrayidx817 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 0
  store double %124, double* %arrayidx817, align 8, !tbaa !7
  %arrayidx822 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 0
  %125 = load double, double* %arrayidx822, align 8, !tbaa !7
  %arrayidx828 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 0
  %126 = load double, double* %arrayidx828, align 8, !tbaa !7
  %neg830 = fmul double %126, 0xC004BC9EECBFB15C
  %127 = tail call double @llvm.fmuladd.f64(double %125, double 0x3F807C84B5DCC63F, double %neg830)
  %arrayidx835 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 0
  store double %127, double* %arrayidx835, align 8, !tbaa !7
  %arrayidx840 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 0
  %128 = load double, double* %arrayidx840, align 8, !tbaa !7
  %arrayidx846 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 0
  %129 = load double, double* %arrayidx846, align 8, !tbaa !7
  %neg848 = fmul double %129, 0xC004BC9EECBFB15C
  %130 = tail call double @llvm.fmuladd.f64(double %128, double 0x3F807C84B5DCC63F, double %neg848)
  %arrayidx853 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 0
  store double %130, double* %arrayidx853, align 8, !tbaa !7
  %arrayidx858 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 0
  %131 = load double, double* %arrayidx858, align 8, !tbaa !7
  %arrayidx864 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 0
  %132 = load double, double* %arrayidx864, align 8, !tbaa !7
  %neg866 = fmul double %132, 0xC004BC9EECBFB15C
  %133 = tail call double @llvm.fmuladd.f64(double %131, double 0x3F807C84B5DCC63F, double %neg866)
  %arrayidx871 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 0
  store double %133, double* %arrayidx871, align 8, !tbaa !7
  %arrayidx876 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 0
  %134 = load double, double* %arrayidx876, align 8, !tbaa !7
  %arrayidx882 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 0
  %135 = load double, double* %arrayidx882, align 8, !tbaa !7
  %neg884 = fmul double %135, 0xC004BC9EECBFB15C
  %136 = tail call double @llvm.fmuladd.f64(double %134, double 0x3F807C84B5DCC63F, double %neg884)
  %arrayidx889 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 0
  store double %136, double* %arrayidx889, align 8, !tbaa !7
  %arrayidx894 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 1
  %137 = load double, double* %arrayidx894, align 8, !tbaa !7
  %arrayidx900 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 1
  %138 = load double, double* %arrayidx900, align 8, !tbaa !7
  %neg902 = fmul double %138, 0xC004BC9EECBFB15C
  %139 = tail call double @llvm.fmuladd.f64(double %137, double 0x3F807C84B5DCC63F, double %neg902)
  %arrayidx907 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 1
  store double %139, double* %arrayidx907, align 8, !tbaa !7
  %arrayidx912 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 1
  %140 = load double, double* %arrayidx912, align 8, !tbaa !7
  %arrayidx918 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 1
  %141 = load double, double* %arrayidx918, align 8, !tbaa !7
  %neg920 = fmul double %141, 0xC004BC9EECBFB15C
  %142 = tail call double @llvm.fmuladd.f64(double %140, double 0x3F807C84B5DCC63F, double %neg920)
  %143 = fadd double %142, 0xBFFF1AEE631F8A0A
  %arrayidx927 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 1
  store double %143, double* %arrayidx927, align 8, !tbaa !7
  %arrayidx932 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 1
  %144 = load double, double* %arrayidx932, align 8, !tbaa !7
  %arrayidx938 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 1
  %145 = load double, double* %arrayidx938, align 8, !tbaa !7
  %neg940 = fmul double %145, 0xC004BC9EECBFB15C
  %146 = tail call double @llvm.fmuladd.f64(double %144, double 0x3F807C84B5DCC63F, double %neg940)
  %arrayidx945 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 1
  store double %146, double* %arrayidx945, align 8, !tbaa !7
  %arrayidx950 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 1
  %147 = load double, double* %arrayidx950, align 8, !tbaa !7
  %arrayidx956 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 1
  %148 = load double, double* %arrayidx956, align 8, !tbaa !7
  %neg958 = fmul double %148, 0xC004BC9EECBFB15C
  %149 = tail call double @llvm.fmuladd.f64(double %147, double 0x3F807C84B5DCC63F, double %neg958)
  %arrayidx963 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 1
  store double %149, double* %arrayidx963, align 8, !tbaa !7
  %arrayidx968 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 1
  %150 = load double, double* %arrayidx968, align 8, !tbaa !7
  %arrayidx974 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 1
  %151 = load double, double* %arrayidx974, align 8, !tbaa !7
  %neg976 = fmul double %151, 0xC004BC9EECBFB15C
  %152 = tail call double @llvm.fmuladd.f64(double %150, double 0x3F807C84B5DCC63F, double %neg976)
  %arrayidx981 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 1
  store double %152, double* %arrayidx981, align 8, !tbaa !7
  %arrayidx986 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 2
  %153 = load double, double* %arrayidx986, align 8, !tbaa !7
  %arrayidx992 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 2
  %154 = load double, double* %arrayidx992, align 8, !tbaa !7
  %neg994 = fmul double %154, 0xC004BC9EECBFB15C
  %155 = tail call double @llvm.fmuladd.f64(double %153, double 0x3F807C84B5DCC63F, double %neg994)
  %arrayidx999 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 2
  store double %155, double* %arrayidx999, align 8, !tbaa !7
  %arrayidx1004 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 2
  %156 = load double, double* %arrayidx1004, align 8, !tbaa !7
  %arrayidx1010 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 2
  %157 = load double, double* %arrayidx1010, align 8, !tbaa !7
  %neg1012 = fmul double %157, 0xC004BC9EECBFB15C
  %158 = tail call double @llvm.fmuladd.f64(double %156, double 0x3F807C84B5DCC63F, double %neg1012)
  %arrayidx1017 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 2
  store double %158, double* %arrayidx1017, align 8, !tbaa !7
  %arrayidx1022 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 2
  %159 = load double, double* %arrayidx1022, align 8, !tbaa !7
  %arrayidx1028 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 2
  %160 = load double, double* %arrayidx1028, align 8, !tbaa !7
  %neg1030 = fmul double %160, 0xC004BC9EECBFB15C
  %161 = tail call double @llvm.fmuladd.f64(double %159, double 0x3F807C84B5DCC63F, double %neg1030)
  %162 = fadd double %161, 0xBFFF1AEE631F8A0A
  %arrayidx1037 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 2
  store double %162, double* %arrayidx1037, align 8, !tbaa !7
  %arrayidx1042 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 2
  %163 = load double, double* %arrayidx1042, align 8, !tbaa !7
  %arrayidx1048 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 2
  %164 = load double, double* %arrayidx1048, align 8, !tbaa !7
  %neg1050 = fmul double %164, 0xC004BC9EECBFB15C
  %165 = tail call double @llvm.fmuladd.f64(double %163, double 0x3F807C84B5DCC63F, double %neg1050)
  %arrayidx1055 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 2
  store double %165, double* %arrayidx1055, align 8, !tbaa !7
  %arrayidx1060 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 2
  %166 = load double, double* %arrayidx1060, align 8, !tbaa !7
  %arrayidx1066 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 2
  %167 = load double, double* %arrayidx1066, align 8, !tbaa !7
  %neg1068 = fmul double %167, 0xC004BC9EECBFB15C
  %168 = tail call double @llvm.fmuladd.f64(double %166, double 0x3F807C84B5DCC63F, double %neg1068)
  %arrayidx1073 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 2
  store double %168, double* %arrayidx1073, align 8, !tbaa !7
  %arrayidx1078 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 3
  %169 = load double, double* %arrayidx1078, align 8, !tbaa !7
  %arrayidx1084 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 3
  %170 = load double, double* %arrayidx1084, align 8, !tbaa !7
  %neg1086 = fmul double %170, 0xC004BC9EECBFB15C
  %171 = tail call double @llvm.fmuladd.f64(double %169, double 0x3F807C84B5DCC63F, double %neg1086)
  %arrayidx1091 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 3
  store double %171, double* %arrayidx1091, align 8, !tbaa !7
  %arrayidx1096 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 3
  %172 = load double, double* %arrayidx1096, align 8, !tbaa !7
  %arrayidx1102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 3
  %173 = load double, double* %arrayidx1102, align 8, !tbaa !7
  %neg1104 = fmul double %173, 0xC004BC9EECBFB15C
  %174 = tail call double @llvm.fmuladd.f64(double %172, double 0x3F807C84B5DCC63F, double %neg1104)
  %arrayidx1109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 3
  store double %174, double* %arrayidx1109, align 8, !tbaa !7
  %arrayidx1114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 3
  %175 = load double, double* %arrayidx1114, align 8, !tbaa !7
  %arrayidx1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 3
  %176 = load double, double* %arrayidx1120, align 8, !tbaa !7
  %neg1122 = fmul double %176, 0xC004BC9EECBFB15C
  %177 = tail call double @llvm.fmuladd.f64(double %175, double 0x3F807C84B5DCC63F, double %neg1122)
  %arrayidx1127 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 3
  store double %177, double* %arrayidx1127, align 8, !tbaa !7
  %arrayidx1132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 3
  %178 = load double, double* %arrayidx1132, align 8, !tbaa !7
  %arrayidx1138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 3
  %179 = load double, double* %arrayidx1138, align 8, !tbaa !7
  %neg1140 = fmul double %179, 0xC004BC9EECBFB15C
  %180 = tail call double @llvm.fmuladd.f64(double %178, double 0x3F807C84B5DCC63F, double %neg1140)
  %181 = fadd double %180, 0xBFFF1AEE631F8A0A
  %arrayidx1147 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 3
  store double %181, double* %arrayidx1147, align 8, !tbaa !7
  %arrayidx1152 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 3
  %182 = load double, double* %arrayidx1152, align 8, !tbaa !7
  %arrayidx1158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 3
  %183 = load double, double* %arrayidx1158, align 8, !tbaa !7
  %neg1160 = fmul double %183, 0xC004BC9EECBFB15C
  %184 = tail call double @llvm.fmuladd.f64(double %182, double 0x3F807C84B5DCC63F, double %neg1160)
  %arrayidx1165 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 3
  store double %184, double* %arrayidx1165, align 8, !tbaa !7
  %arrayidx1170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 4
  %185 = load double, double* %arrayidx1170, align 8, !tbaa !7
  %arrayidx1176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 4
  %186 = load double, double* %arrayidx1176, align 8, !tbaa !7
  %neg1178 = fmul double %186, 0xC004BC9EECBFB15C
  %187 = tail call double @llvm.fmuladd.f64(double %185, double 0x3F807C84B5DCC63F, double %neg1178)
  %arrayidx1183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 4
  store double %187, double* %arrayidx1183, align 8, !tbaa !7
  %arrayidx1188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 4
  %188 = load double, double* %arrayidx1188, align 8, !tbaa !7
  %arrayidx1194 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 4
  %189 = load double, double* %arrayidx1194, align 8, !tbaa !7
  %neg1196 = fmul double %189, 0xC004BC9EECBFB15C
  %190 = tail call double @llvm.fmuladd.f64(double %188, double 0x3F807C84B5DCC63F, double %neg1196)
  %arrayidx1201 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 4
  store double %190, double* %arrayidx1201, align 8, !tbaa !7
  %arrayidx1206 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 4
  %191 = load double, double* %arrayidx1206, align 8, !tbaa !7
  %arrayidx1212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 4
  %192 = load double, double* %arrayidx1212, align 8, !tbaa !7
  %neg1214 = fmul double %192, 0xC004BC9EECBFB15C
  %193 = tail call double @llvm.fmuladd.f64(double %191, double 0x3F807C84B5DCC63F, double %neg1214)
  %arrayidx1219 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 4
  store double %193, double* %arrayidx1219, align 8, !tbaa !7
  %arrayidx1224 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 4
  %194 = load double, double* %arrayidx1224, align 8, !tbaa !7
  %arrayidx1230 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 4
  %195 = load double, double* %arrayidx1230, align 8, !tbaa !7
  %neg1232 = fmul double %195, 0xC004BC9EECBFB15C
  %196 = tail call double @llvm.fmuladd.f64(double %194, double 0x3F807C84B5DCC63F, double %neg1232)
  %arrayidx1237 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 4
  store double %196, double* %arrayidx1237, align 8, !tbaa !7
  %arrayidx1242 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 4
  %197 = load double, double* %arrayidx1242, align 8, !tbaa !7
  %arrayidx1248 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 4
  %198 = load double, double* %arrayidx1248, align 8, !tbaa !7
  %neg1250 = fmul double %198, 0xC004BC9EECBFB15C
  %199 = tail call double @llvm.fmuladd.f64(double %197, double 0x3F807C84B5DCC63F, double %neg1250)
  %200 = fadd double %199, 0xBFFF1AEE631F8A0A
  %arrayidx1257 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 4
  store double %200, double* %arrayidx1257, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @x_solve(double* nocapture %g_rhs, double* %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !31 {
entry:
  %p_lhsAA = alloca [5 x [5 x double]], align 16
  %p_lhsBB = alloca [5 x [5 x double]], align 16
  %p_lhsCC = alloca [5 x [5 x double]], align 16
  %p_rhs = alloca [5 x double], align 16
  %p_lhsm1CC = alloca [5 x [5 x double]], align 16
  %p_rhsm1 = alloca [5 x double], align 16
  %0 = bitcast [5 x [5 x double]]* %p_lhsAA to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #7
  %1 = bitcast [5 x [5 x double]]* %p_lhsBB to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %1) #7
  %2 = bitcast [5 x [5 x double]]* %p_lhsCC to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %2) #7
  %3 = bitcast [5 x double]* %p_rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  %4 = bitcast [5 x [5 x double]]* %p_lhsm1CC to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #7
  %5 = bitcast [5 x double]* %p_rhsm1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  %call = tail call i64 @_Z13get_global_idj(i32 1) #6
  %6 = trunc i64 %call to i32
  %conv = add i32 %6, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %7 = trunc i64 %call1 to i32
  %conv3 = add i32 %7, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sub5 = add nsw i32 %gp1, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %8 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %mul = mul nsw i32 %sub5, %6
  %add11 = add nsw i32 %mul, %7
  %mul15 = mul i32 %add11, 12225
  %idxprom = sext i32 %mul15 to i64
  %arrayidx = getelementptr inbounds double, double* %g_lhs, i64 %idxprom
  %9 = bitcast double* %arrayidx to [3 x [5 x [5 x double]]]*
  %sub16 = add i32 %gp0, -1
  %arraydecay = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0
  %arrayidx18 = getelementptr inbounds double, double* %arrayidx, i64 25
  %10 = load double, double* %arrayidx18, align 8, !tbaa !7
  %arrayidx3.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 0
  store double %10, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i = getelementptr inbounds double, double* %arrayidx18, i64 1
  %11 = load double, double* %arrayidx5.i, align 8, !tbaa !7
  %arrayidx7.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 1
  store double %11, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i = getelementptr inbounds double, double* %arrayidx18, i64 2
  %12 = load double, double* %arrayidx9.i, align 8, !tbaa !7
  %arrayidx11.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 2
  store double %12, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i = getelementptr inbounds double, double* %arrayidx18, i64 3
  %13 = load double, double* %arrayidx13.i, align 8, !tbaa !7
  %arrayidx15.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 3
  store double %13, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i = getelementptr inbounds double, double* %arrayidx18, i64 4
  %14 = load double, double* %arrayidx17.i, align 8, !tbaa !7
  %arrayidx19.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 4
  store double %14, double* %arrayidx19.i, align 16, !tbaa !7
  %15 = getelementptr inbounds double, double* %arrayidx18, i64 5
  %16 = load double, double* %15, align 8, !tbaa !7
  %arrayidx23.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 0
  store double %16, double* %arrayidx23.i, align 8, !tbaa !7
  %17 = getelementptr inbounds double, double* %arrayidx18, i64 6
  %18 = load double, double* %17, align 8, !tbaa !7
  %arrayidx27.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 1
  store double %18, double* %arrayidx27.i, align 16, !tbaa !7
  %19 = getelementptr inbounds double, double* %arrayidx18, i64 7
  %20 = load double, double* %19, align 8, !tbaa !7
  %arrayidx31.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 2
  store double %20, double* %arrayidx31.i, align 8, !tbaa !7
  %21 = getelementptr inbounds double, double* %arrayidx18, i64 8
  %22 = load double, double* %21, align 8, !tbaa !7
  %arrayidx35.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 3
  store double %22, double* %arrayidx35.i, align 16, !tbaa !7
  %23 = getelementptr inbounds double, double* %arrayidx18, i64 9
  %24 = load double, double* %23, align 8, !tbaa !7
  %arrayidx39.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 4
  store double %24, double* %arrayidx39.i, align 8, !tbaa !7
  %25 = getelementptr inbounds double, double* %arrayidx18, i64 10
  %26 = load double, double* %25, align 8, !tbaa !7
  %arrayidx43.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 0
  store double %26, double* %arrayidx43.i, align 16, !tbaa !7
  %27 = getelementptr inbounds double, double* %arrayidx18, i64 11
  %28 = load double, double* %27, align 8, !tbaa !7
  %arrayidx47.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 1
  store double %28, double* %arrayidx47.i, align 8, !tbaa !7
  %29 = getelementptr inbounds double, double* %arrayidx18, i64 12
  %30 = load double, double* %29, align 8, !tbaa !7
  %arrayidx51.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 2
  store double %30, double* %arrayidx51.i, align 16, !tbaa !7
  %31 = getelementptr inbounds double, double* %arrayidx18, i64 13
  %32 = load double, double* %31, align 8, !tbaa !7
  %arrayidx55.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 3
  store double %32, double* %arrayidx55.i, align 8, !tbaa !7
  %33 = getelementptr inbounds double, double* %arrayidx18, i64 14
  %34 = load double, double* %33, align 8, !tbaa !7
  %arrayidx59.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 4
  store double %34, double* %arrayidx59.i, align 16, !tbaa !7
  %35 = getelementptr inbounds double, double* %arrayidx18, i64 15
  %36 = load double, double* %35, align 8, !tbaa !7
  %arrayidx63.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 0
  store double %36, double* %arrayidx63.i, align 8, !tbaa !7
  %37 = getelementptr inbounds double, double* %arrayidx18, i64 16
  %38 = load double, double* %37, align 8, !tbaa !7
  %arrayidx67.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 1
  store double %38, double* %arrayidx67.i, align 16, !tbaa !7
  %39 = getelementptr inbounds double, double* %arrayidx18, i64 17
  %40 = load double, double* %39, align 8, !tbaa !7
  %arrayidx71.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 2
  store double %40, double* %arrayidx71.i, align 8, !tbaa !7
  %41 = getelementptr inbounds double, double* %arrayidx18, i64 18
  %42 = load double, double* %41, align 8, !tbaa !7
  %arrayidx75.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 3
  store double %42, double* %arrayidx75.i, align 16, !tbaa !7
  %43 = getelementptr inbounds double, double* %arrayidx18, i64 19
  %44 = load double, double* %43, align 8, !tbaa !7
  %arrayidx79.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 4
  store double %44, double* %arrayidx79.i, align 8, !tbaa !7
  %45 = getelementptr inbounds double, double* %arrayidx18, i64 20
  %46 = load double, double* %45, align 8, !tbaa !7
  %arrayidx83.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 0
  store double %46, double* %arrayidx83.i, align 16, !tbaa !7
  %47 = getelementptr inbounds double, double* %arrayidx18, i64 21
  %48 = load double, double* %47, align 8, !tbaa !7
  %arrayidx87.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 1
  store double %48, double* %arrayidx87.i, align 8, !tbaa !7
  %49 = getelementptr inbounds double, double* %arrayidx18, i64 22
  %50 = load double, double* %49, align 8, !tbaa !7
  %arrayidx91.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 2
  store double %50, double* %arrayidx91.i, align 16, !tbaa !7
  %51 = getelementptr inbounds double, double* %arrayidx18, i64 23
  %52 = load double, double* %51, align 8, !tbaa !7
  %arrayidx95.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 3
  store double %52, double* %arrayidx95.i, align 8, !tbaa !7
  %53 = getelementptr inbounds double, double* %arrayidx18, i64 24
  %54 = load double, double* %53, align 8, !tbaa !7
  %arrayidx99.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 4
  store double %54, double* %arrayidx99.i, align 16, !tbaa !7
  %arraydecay20 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0
  %arrayidx22 = getelementptr inbounds double, double* %arrayidx, i64 50
  %55 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx3.i422 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 0
  store double %55, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i423 = getelementptr inbounds double, double* %arrayidx22, i64 1
  %56 = load double, double* %arrayidx5.i423, align 8, !tbaa !7
  %arrayidx7.i424 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 1
  store double %56, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i425 = getelementptr inbounds double, double* %arrayidx22, i64 2
  %57 = load double, double* %arrayidx9.i425, align 8, !tbaa !7
  %arrayidx11.i426 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 2
  store double %57, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i427 = getelementptr inbounds double, double* %arrayidx22, i64 3
  %58 = load double, double* %arrayidx13.i427, align 8, !tbaa !7
  %arrayidx15.i428 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 3
  store double %58, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i429 = getelementptr inbounds double, double* %arrayidx22, i64 4
  %59 = load double, double* %arrayidx17.i429, align 8, !tbaa !7
  %arrayidx19.i430 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 4
  store double %59, double* %arrayidx19.i430, align 16, !tbaa !7
  %60 = getelementptr inbounds double, double* %arrayidx22, i64 5
  %61 = load double, double* %60, align 8, !tbaa !7
  %arrayidx23.i432 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 0
  store double %61, double* %arrayidx23.i432, align 8, !tbaa !7
  %62 = getelementptr inbounds double, double* %arrayidx22, i64 6
  %63 = load double, double* %62, align 8, !tbaa !7
  %arrayidx27.i434 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 1
  store double %63, double* %arrayidx27.i434, align 16, !tbaa !7
  %64 = getelementptr inbounds double, double* %arrayidx22, i64 7
  %65 = load double, double* %64, align 8, !tbaa !7
  %arrayidx31.i436 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 2
  store double %65, double* %arrayidx31.i436, align 8, !tbaa !7
  %66 = getelementptr inbounds double, double* %arrayidx22, i64 8
  %67 = load double, double* %66, align 8, !tbaa !7
  %arrayidx35.i438 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 3
  store double %67, double* %arrayidx35.i438, align 16, !tbaa !7
  %68 = getelementptr inbounds double, double* %arrayidx22, i64 9
  %69 = load double, double* %68, align 8, !tbaa !7
  %arrayidx39.i440 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 4
  store double %69, double* %arrayidx39.i440, align 8, !tbaa !7
  %70 = getelementptr inbounds double, double* %arrayidx22, i64 10
  %71 = load double, double* %70, align 8, !tbaa !7
  %arrayidx43.i442 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 0
  store double %71, double* %arrayidx43.i442, align 16, !tbaa !7
  %72 = getelementptr inbounds double, double* %arrayidx22, i64 11
  %73 = load double, double* %72, align 8, !tbaa !7
  %arrayidx47.i444 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 1
  store double %73, double* %arrayidx47.i444, align 8, !tbaa !7
  %74 = getelementptr inbounds double, double* %arrayidx22, i64 12
  %75 = load double, double* %74, align 8, !tbaa !7
  %arrayidx51.i446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 2
  store double %75, double* %arrayidx51.i446, align 16, !tbaa !7
  %76 = getelementptr inbounds double, double* %arrayidx22, i64 13
  %77 = load double, double* %76, align 8, !tbaa !7
  %arrayidx55.i448 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 3
  store double %77, double* %arrayidx55.i448, align 8, !tbaa !7
  %78 = getelementptr inbounds double, double* %arrayidx22, i64 14
  %79 = load double, double* %78, align 8, !tbaa !7
  %arrayidx59.i450 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 4
  store double %79, double* %arrayidx59.i450, align 16, !tbaa !7
  %80 = getelementptr inbounds double, double* %arrayidx22, i64 15
  %81 = load double, double* %80, align 8, !tbaa !7
  %arrayidx63.i452 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 0
  store double %81, double* %arrayidx63.i452, align 8, !tbaa !7
  %82 = getelementptr inbounds double, double* %arrayidx22, i64 16
  %83 = load double, double* %82, align 8, !tbaa !7
  %arrayidx67.i454 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 1
  store double %83, double* %arrayidx67.i454, align 16, !tbaa !7
  %84 = getelementptr inbounds double, double* %arrayidx22, i64 17
  %85 = load double, double* %84, align 8, !tbaa !7
  %arrayidx71.i456 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 2
  store double %85, double* %arrayidx71.i456, align 8, !tbaa !7
  %86 = getelementptr inbounds double, double* %arrayidx22, i64 18
  %87 = load double, double* %86, align 8, !tbaa !7
  %arrayidx75.i458 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 3
  store double %87, double* %arrayidx75.i458, align 16, !tbaa !7
  %88 = getelementptr inbounds double, double* %arrayidx22, i64 19
  %89 = load double, double* %88, align 8, !tbaa !7
  %arrayidx79.i460 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 4
  store double %89, double* %arrayidx79.i460, align 8, !tbaa !7
  %90 = getelementptr inbounds double, double* %arrayidx22, i64 20
  %91 = load double, double* %90, align 8, !tbaa !7
  %arrayidx83.i462 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 0
  store double %91, double* %arrayidx83.i462, align 16, !tbaa !7
  %92 = getelementptr inbounds double, double* %arrayidx22, i64 21
  %93 = load double, double* %92, align 8, !tbaa !7
  %arrayidx87.i464 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 1
  store double %93, double* %arrayidx87.i464, align 8, !tbaa !7
  %94 = getelementptr inbounds double, double* %arrayidx22, i64 22
  %95 = load double, double* %94, align 8, !tbaa !7
  %arrayidx91.i466 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 2
  store double %95, double* %arrayidx91.i466, align 16, !tbaa !7
  %96 = getelementptr inbounds double, double* %arrayidx22, i64 23
  %97 = load double, double* %96, align 8, !tbaa !7
  %arrayidx95.i468 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 3
  store double %97, double* %arrayidx95.i468, align 8, !tbaa !7
  %98 = getelementptr inbounds double, double* %arrayidx22, i64 24
  %99 = load double, double* %98, align 8, !tbaa !7
  %arrayidx99.i470 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 4
  store double %99, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay24 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 0
  %idxprom25 = sext i32 %conv to i64
  %idxprom27 = sext i32 %conv3 to i64
  %arraydecay30 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 0, i64 0
  %100 = load double, double* %arraydecay30, align 8, !tbaa !7
  store double %100, double* %arraydecay24, align 16, !tbaa !7
  %arrayidx2.i471 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 0, i64 1
  %101 = load double, double* %arrayidx2.i471, align 8, !tbaa !7
  %arrayidx3.i472 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 1
  store double %101, double* %arrayidx3.i472, align 8, !tbaa !7
  %arrayidx4.i473 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 0, i64 2
  %102 = load double, double* %arrayidx4.i473, align 8, !tbaa !7
  %arrayidx5.i474 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 2
  store double %102, double* %arrayidx5.i474, align 16, !tbaa !7
  %arrayidx6.i475 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 0, i64 3
  %103 = load double, double* %arrayidx6.i475, align 8, !tbaa !7
  %arrayidx7.i476 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 3
  store double %103, double* %arrayidx7.i476, align 8, !tbaa !7
  %arrayidx8.i477 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 0, i64 4
  %104 = load double, double* %arrayidx8.i477, align 8, !tbaa !7
  %arrayidx9.i478 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 4
  store double %104, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_binvcrhs([5 x double]* nonnull %arraydecay, [5 x double]* nonnull %arraydecay20, double* nonnull %arraydecay24)
  %105 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %105, double* %arrayidx18, align 8, !tbaa !7
  %106 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %106, double* %arrayidx5.i, align 8, !tbaa !7
  %107 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %107, double* %arrayidx9.i, align 8, !tbaa !7
  %108 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %108, double* %arrayidx13.i, align 8, !tbaa !7
  %109 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %109, double* %arrayidx17.i, align 8, !tbaa !7
  %110 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %110, double* %15, align 8, !tbaa !7
  %111 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %111, double* %17, align 8, !tbaa !7
  %112 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %112, double* %19, align 8, !tbaa !7
  %113 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %113, double* %21, align 8, !tbaa !7
  %114 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %114, double* %23, align 8, !tbaa !7
  %115 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %115, double* %25, align 8, !tbaa !7
  %116 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %116, double* %27, align 8, !tbaa !7
  %117 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %117, double* %29, align 8, !tbaa !7
  %118 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %118, double* %31, align 8, !tbaa !7
  %119 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %119, double* %33, align 8, !tbaa !7
  %120 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %120, double* %35, align 8, !tbaa !7
  %121 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %121, double* %37, align 8, !tbaa !7
  %122 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %122, double* %39, align 8, !tbaa !7
  %123 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %123, double* %41, align 8, !tbaa !7
  %124 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %124, double* %43, align 8, !tbaa !7
  %125 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %125, double* %45, align 8, !tbaa !7
  %126 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %126, double* %47, align 8, !tbaa !7
  %127 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %127, double* %49, align 8, !tbaa !7
  %128 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %128, double* %51, align 8, !tbaa !7
  %129 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %129, double* %53, align 8, !tbaa !7
  %130 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %130, double* %arrayidx22, align 8, !tbaa !7
  %131 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %131, double* %arrayidx5.i423, align 8, !tbaa !7
  %132 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %132, double* %arrayidx9.i425, align 8, !tbaa !7
  %133 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %133, double* %arrayidx13.i427, align 8, !tbaa !7
  %134 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %134, double* %arrayidx17.i429, align 8, !tbaa !7
  %135 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %135, double* %60, align 8, !tbaa !7
  %136 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %136, double* %62, align 8, !tbaa !7
  %137 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %137, double* %64, align 8, !tbaa !7
  %138 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %138, double* %66, align 8, !tbaa !7
  %139 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %139, double* %68, align 8, !tbaa !7
  %140 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %140, double* %70, align 8, !tbaa !7
  %141 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %141, double* %72, align 8, !tbaa !7
  %142 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %142, double* %74, align 8, !tbaa !7
  %143 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %143, double* %76, align 8, !tbaa !7
  %144 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %144, double* %78, align 8, !tbaa !7
  %145 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %145, double* %80, align 8, !tbaa !7
  %146 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %146, double* %82, align 8, !tbaa !7
  %147 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %147, double* %84, align 8, !tbaa !7
  %148 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %148, double* %86, align 8, !tbaa !7
  %149 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %149, double* %88, align 8, !tbaa !7
  %150 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %150, double* %90, align 8, !tbaa !7
  %151 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %151, double* %92, align 8, !tbaa !7
  %152 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %152, double* %94, align 8, !tbaa !7
  %153 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %153, double* %96, align 8, !tbaa !7
  %154 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %154, double* %98, align 8, !tbaa !7
  %155 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %155, double* %arraydecay30, align 8, !tbaa !7
  %156 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %156, double* %arrayidx2.i471, align 8, !tbaa !7
  %157 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %157, double* %arrayidx4.i473, align 8, !tbaa !7
  %158 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %158, double* %arrayidx6.i475, align 8, !tbaa !7
  %159 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %159, double* %arrayidx8.i477, align 8, !tbaa !7
  %cmp50.not1217 = icmp slt i32 %gp0, 3
  br i1 %cmp50.not1217, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %arraydecay52 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0
  %arrayidx3.i1156 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 0
  %arrayidx7.i1158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 1
  %arrayidx11.i1160 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 2
  %arrayidx15.i1162 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 3
  %arrayidx19.i1164 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 4
  %arrayidx23.i1166 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 0
  %arrayidx27.i1168 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 1
  %arrayidx31.i1170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 2
  %arrayidx35.i1172 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 3
  %arrayidx39.i1174 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 4
  %arrayidx43.i1176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 0
  %arrayidx47.i1178 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 1
  %arrayidx51.i1180 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 2
  %arrayidx55.i1182 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 3
  %arrayidx59.i1184 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 4
  %arrayidx63.i1186 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 0
  %arrayidx67.i1188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 1
  %arrayidx71.i1190 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 2
  %arrayidx75.i1192 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 3
  %arrayidx79.i1194 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 4
  %arrayidx83.i1196 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 0
  %arrayidx87.i1198 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 1
  %arrayidx91.i1200 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 2
  %arrayidx95.i1202 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 3
  %arrayidx99.i1204 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 4
  %arraydecay54 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  %arrayidx3.i1148 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  %arrayidx5.i1150 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  %arrayidx7.i1152 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  %arrayidx9.i1154 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  %arraydecay56 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0
  %arrayidx3.i1098 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 0
  %arrayidx7.i1100 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 1
  %arrayidx11.i1102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 2
  %arrayidx15.i1104 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 3
  %arrayidx19.i1106 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 4
  %arrayidx23.i1108 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 0
  %arrayidx27.i1110 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 1
  %arrayidx31.i1112 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 2
  %arrayidx35.i1114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 3
  %arrayidx39.i1116 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 4
  %arrayidx43.i1118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 0
  %arrayidx47.i1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 1
  %arrayidx51.i1122 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 2
  %arrayidx55.i1124 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 3
  %arrayidx59.i1126 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 4
  %arrayidx63.i1128 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 0
  %arrayidx67.i1130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 1
  %arrayidx71.i1132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 2
  %arrayidx75.i1134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 3
  %arrayidx79.i1136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 4
  %arrayidx83.i1138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 0
  %arrayidx87.i1140 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 1
  %arrayidx91.i1142 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 2
  %arrayidx95.i1144 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 3
  %arrayidx99.i1146 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 4
  %wide.trip.count = zext i32 %sub16 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %160 = phi double [ %159, %for.body.lr.ph ], [ %349, %for.body ]
  %161 = phi double [ %158, %for.body.lr.ph ], [ %348, %for.body ]
  %162 = phi double [ %157, %for.body.lr.ph ], [ %347, %for.body ]
  %163 = phi double [ %156, %for.body.lr.ph ], [ %346, %for.body ]
  %164 = phi double [ %155, %for.body.lr.ph ], [ %345, %for.body ]
  %165 = phi double [ %154, %for.body.lr.ph ], [ %344, %for.body ]
  %166 = phi double [ %153, %for.body.lr.ph ], [ %343, %for.body ]
  %167 = phi double [ %152, %for.body.lr.ph ], [ %342, %for.body ]
  %168 = phi double [ %151, %for.body.lr.ph ], [ %341, %for.body ]
  %169 = phi double [ %150, %for.body.lr.ph ], [ %340, %for.body ]
  %170 = phi double [ %149, %for.body.lr.ph ], [ %339, %for.body ]
  %171 = phi double [ %148, %for.body.lr.ph ], [ %338, %for.body ]
  %172 = phi double [ %147, %for.body.lr.ph ], [ %337, %for.body ]
  %173 = phi double [ %146, %for.body.lr.ph ], [ %336, %for.body ]
  %174 = phi double [ %145, %for.body.lr.ph ], [ %335, %for.body ]
  %175 = phi double [ %144, %for.body.lr.ph ], [ %334, %for.body ]
  %176 = phi double [ %143, %for.body.lr.ph ], [ %333, %for.body ]
  %177 = phi double [ %142, %for.body.lr.ph ], [ %332, %for.body ]
  %178 = phi double [ %141, %for.body.lr.ph ], [ %331, %for.body ]
  %179 = phi double [ %140, %for.body.lr.ph ], [ %330, %for.body ]
  %180 = phi double [ %139, %for.body.lr.ph ], [ %329, %for.body ]
  %181 = phi double [ %138, %for.body.lr.ph ], [ %328, %for.body ]
  %182 = phi double [ %137, %for.body.lr.ph ], [ %327, %for.body ]
  %183 = phi double [ %136, %for.body.lr.ph ], [ %326, %for.body ]
  %184 = phi double [ %135, %for.body.lr.ph ], [ %325, %for.body ]
  %185 = phi double [ %134, %for.body.lr.ph ], [ %324, %for.body ]
  %186 = phi double [ %133, %for.body.lr.ph ], [ %323, %for.body ]
  %187 = phi double [ %132, %for.body.lr.ph ], [ %322, %for.body ]
  %188 = phi double [ %131, %for.body.lr.ph ], [ %321, %for.body ]
  %189 = phi double [ %130, %for.body.lr.ph ], [ %320, %for.body ]
  %indvars.iv1222 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next1223, %for.body ]
  store double %189, double* %arrayidx3.i1156, align 16, !tbaa !7
  store double %188, double* %arrayidx7.i1158, align 8, !tbaa !7
  store double %187, double* %arrayidx11.i1160, align 16, !tbaa !7
  store double %186, double* %arrayidx15.i1162, align 8, !tbaa !7
  store double %185, double* %arrayidx19.i1164, align 16, !tbaa !7
  store double %184, double* %arrayidx23.i1166, align 8, !tbaa !7
  store double %183, double* %arrayidx27.i1168, align 16, !tbaa !7
  store double %182, double* %arrayidx31.i1170, align 8, !tbaa !7
  store double %181, double* %arrayidx35.i1172, align 16, !tbaa !7
  store double %180, double* %arrayidx39.i1174, align 8, !tbaa !7
  store double %179, double* %arrayidx43.i1176, align 16, !tbaa !7
  store double %178, double* %arrayidx47.i1178, align 8, !tbaa !7
  store double %177, double* %arrayidx51.i1180, align 16, !tbaa !7
  store double %176, double* %arrayidx55.i1182, align 8, !tbaa !7
  store double %175, double* %arrayidx59.i1184, align 16, !tbaa !7
  store double %174, double* %arrayidx63.i1186, align 8, !tbaa !7
  store double %173, double* %arrayidx67.i1188, align 16, !tbaa !7
  store double %172, double* %arrayidx71.i1190, align 8, !tbaa !7
  store double %171, double* %arrayidx75.i1192, align 16, !tbaa !7
  store double %170, double* %arrayidx79.i1194, align 8, !tbaa !7
  store double %169, double* %arrayidx83.i1196, align 16, !tbaa !7
  store double %168, double* %arrayidx87.i1198, align 8, !tbaa !7
  store double %167, double* %arrayidx91.i1200, align 16, !tbaa !7
  store double %166, double* %arrayidx95.i1202, align 8, !tbaa !7
  store double %165, double* %arrayidx99.i1204, align 16, !tbaa !7
  store double %164, double* %arraydecay54, align 16, !tbaa !7
  store double %163, double* %arrayidx3.i1148, align 8, !tbaa !7
  store double %162, double* %arrayidx5.i1150, align 16, !tbaa !7
  store double %161, double* %arrayidx7.i1152, align 8, !tbaa !7
  store double %160, double* %arrayidx9.i1154, align 16, !tbaa !7
  %arrayidx1.i1097 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 0
  %190 = load double, double* %arrayidx1.i1097, align 8, !tbaa !7
  store double %190, double* %arrayidx3.i1098, align 16, !tbaa !7
  %arrayidx5.i1099 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 1
  %191 = load double, double* %arrayidx5.i1099, align 8, !tbaa !7
  store double %191, double* %arrayidx7.i1100, align 8, !tbaa !7
  %arrayidx9.i1101 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 2
  %192 = load double, double* %arrayidx9.i1101, align 8, !tbaa !7
  store double %192, double* %arrayidx11.i1102, align 16, !tbaa !7
  %arrayidx13.i1103 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 3
  %193 = load double, double* %arrayidx13.i1103, align 8, !tbaa !7
  store double %193, double* %arrayidx15.i1104, align 8, !tbaa !7
  %arrayidx17.i1105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 4
  %194 = load double, double* %arrayidx17.i1105, align 8, !tbaa !7
  store double %194, double* %arrayidx19.i1106, align 16, !tbaa !7
  %arrayidx21.i1107 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 0
  %195 = load double, double* %arrayidx21.i1107, align 8, !tbaa !7
  store double %195, double* %arrayidx23.i1108, align 8, !tbaa !7
  %arrayidx25.i1109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 1
  %196 = load double, double* %arrayidx25.i1109, align 8, !tbaa !7
  store double %196, double* %arrayidx27.i1110, align 16, !tbaa !7
  %arrayidx29.i1111 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 2
  %197 = load double, double* %arrayidx29.i1111, align 8, !tbaa !7
  store double %197, double* %arrayidx31.i1112, align 8, !tbaa !7
  %arrayidx33.i1113 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 3
  %198 = load double, double* %arrayidx33.i1113, align 8, !tbaa !7
  store double %198, double* %arrayidx35.i1114, align 16, !tbaa !7
  %arrayidx37.i1115 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 4
  %199 = load double, double* %arrayidx37.i1115, align 8, !tbaa !7
  store double %199, double* %arrayidx39.i1116, align 8, !tbaa !7
  %arrayidx41.i1117 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 0
  %200 = load double, double* %arrayidx41.i1117, align 8, !tbaa !7
  store double %200, double* %arrayidx43.i1118, align 16, !tbaa !7
  %arrayidx45.i1119 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 1
  %201 = load double, double* %arrayidx45.i1119, align 8, !tbaa !7
  store double %201, double* %arrayidx47.i1120, align 8, !tbaa !7
  %arrayidx49.i1121 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 2
  %202 = load double, double* %arrayidx49.i1121, align 8, !tbaa !7
  store double %202, double* %arrayidx51.i1122, align 16, !tbaa !7
  %arrayidx53.i1123 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 3
  %203 = load double, double* %arrayidx53.i1123, align 8, !tbaa !7
  store double %203, double* %arrayidx55.i1124, align 8, !tbaa !7
  %arrayidx57.i1125 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 4
  %204 = load double, double* %arrayidx57.i1125, align 8, !tbaa !7
  store double %204, double* %arrayidx59.i1126, align 16, !tbaa !7
  %arrayidx61.i1127 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 0
  %205 = load double, double* %arrayidx61.i1127, align 8, !tbaa !7
  store double %205, double* %arrayidx63.i1128, align 8, !tbaa !7
  %arrayidx65.i1129 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 1
  %206 = load double, double* %arrayidx65.i1129, align 8, !tbaa !7
  store double %206, double* %arrayidx67.i1130, align 16, !tbaa !7
  %arrayidx69.i1131 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 2
  %207 = load double, double* %arrayidx69.i1131, align 8, !tbaa !7
  store double %207, double* %arrayidx71.i1132, align 8, !tbaa !7
  %arrayidx73.i1133 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 3
  %208 = load double, double* %arrayidx73.i1133, align 8, !tbaa !7
  store double %208, double* %arrayidx75.i1134, align 16, !tbaa !7
  %arrayidx77.i1135 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 4
  %209 = load double, double* %arrayidx77.i1135, align 8, !tbaa !7
  store double %209, double* %arrayidx79.i1136, align 8, !tbaa !7
  %arrayidx81.i1137 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 0
  %210 = load double, double* %arrayidx81.i1137, align 8, !tbaa !7
  store double %210, double* %arrayidx83.i1138, align 16, !tbaa !7
  %arrayidx85.i1139 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 1
  %211 = load double, double* %arrayidx85.i1139, align 8, !tbaa !7
  store double %211, double* %arrayidx87.i1140, align 8, !tbaa !7
  %arrayidx89.i1141 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 2
  %212 = load double, double* %arrayidx89.i1141, align 8, !tbaa !7
  store double %212, double* %arrayidx91.i1142, align 16, !tbaa !7
  %arrayidx93.i1143 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 3
  %213 = load double, double* %arrayidx93.i1143, align 8, !tbaa !7
  store double %213, double* %arrayidx95.i1144, align 8, !tbaa !7
  %arrayidx97.i1145 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 4
  %214 = load double, double* %arrayidx97.i1145, align 8, !tbaa !7
  store double %214, double* %arrayidx99.i1146, align 16, !tbaa !7
  %arrayidx1.i1047 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 0
  %215 = load double, double* %arrayidx1.i1047, align 8, !tbaa !7
  store double %215, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i1049 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 1
  %216 = load double, double* %arrayidx5.i1049, align 8, !tbaa !7
  store double %216, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i1051 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 2
  %217 = load double, double* %arrayidx9.i1051, align 8, !tbaa !7
  store double %217, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i1053 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 3
  %218 = load double, double* %arrayidx13.i1053, align 8, !tbaa !7
  store double %218, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i1055 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 4
  %219 = load double, double* %arrayidx17.i1055, align 8, !tbaa !7
  store double %219, double* %arrayidx19.i, align 16, !tbaa !7
  %arrayidx21.i1057 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 0
  %220 = load double, double* %arrayidx21.i1057, align 8, !tbaa !7
  store double %220, double* %arrayidx23.i, align 8, !tbaa !7
  %arrayidx25.i1059 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 1
  %221 = load double, double* %arrayidx25.i1059, align 8, !tbaa !7
  store double %221, double* %arrayidx27.i, align 16, !tbaa !7
  %arrayidx29.i1061 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 2
  %222 = load double, double* %arrayidx29.i1061, align 8, !tbaa !7
  store double %222, double* %arrayidx31.i, align 8, !tbaa !7
  %arrayidx33.i1063 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 3
  %223 = load double, double* %arrayidx33.i1063, align 8, !tbaa !7
  store double %223, double* %arrayidx35.i, align 16, !tbaa !7
  %arrayidx37.i1065 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 4
  %224 = load double, double* %arrayidx37.i1065, align 8, !tbaa !7
  store double %224, double* %arrayidx39.i, align 8, !tbaa !7
  %arrayidx41.i1067 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 0
  %225 = load double, double* %arrayidx41.i1067, align 8, !tbaa !7
  store double %225, double* %arrayidx43.i, align 16, !tbaa !7
  %arrayidx45.i1069 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 1
  %226 = load double, double* %arrayidx45.i1069, align 8, !tbaa !7
  store double %226, double* %arrayidx47.i, align 8, !tbaa !7
  %arrayidx49.i1071 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 2
  %227 = load double, double* %arrayidx49.i1071, align 8, !tbaa !7
  store double %227, double* %arrayidx51.i, align 16, !tbaa !7
  %arrayidx53.i1073 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 3
  %228 = load double, double* %arrayidx53.i1073, align 8, !tbaa !7
  store double %228, double* %arrayidx55.i, align 8, !tbaa !7
  %arrayidx57.i1075 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 4
  %229 = load double, double* %arrayidx57.i1075, align 8, !tbaa !7
  store double %229, double* %arrayidx59.i, align 16, !tbaa !7
  %arrayidx61.i1077 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 0
  %230 = load double, double* %arrayidx61.i1077, align 8, !tbaa !7
  store double %230, double* %arrayidx63.i, align 8, !tbaa !7
  %arrayidx65.i1079 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 1
  %231 = load double, double* %arrayidx65.i1079, align 8, !tbaa !7
  store double %231, double* %arrayidx67.i, align 16, !tbaa !7
  %arrayidx69.i1081 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 2
  %232 = load double, double* %arrayidx69.i1081, align 8, !tbaa !7
  store double %232, double* %arrayidx71.i, align 8, !tbaa !7
  %arrayidx73.i1083 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 3
  %233 = load double, double* %arrayidx73.i1083, align 8, !tbaa !7
  store double %233, double* %arrayidx75.i, align 16, !tbaa !7
  %arrayidx77.i1085 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 4
  %234 = load double, double* %arrayidx77.i1085, align 8, !tbaa !7
  store double %234, double* %arrayidx79.i, align 8, !tbaa !7
  %arrayidx81.i1087 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 0
  %235 = load double, double* %arrayidx81.i1087, align 8, !tbaa !7
  store double %235, double* %arrayidx83.i, align 16, !tbaa !7
  %arrayidx85.i1089 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 1
  %236 = load double, double* %arrayidx85.i1089, align 8, !tbaa !7
  store double %236, double* %arrayidx87.i, align 8, !tbaa !7
  %arrayidx89.i1091 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 2
  %237 = load double, double* %arrayidx89.i1091, align 8, !tbaa !7
  store double %237, double* %arrayidx91.i, align 16, !tbaa !7
  %arrayidx93.i1093 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 3
  %238 = load double, double* %arrayidx93.i1093, align 8, !tbaa !7
  store double %238, double* %arrayidx95.i, align 8, !tbaa !7
  %arrayidx97.i1095 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 4
  %239 = load double, double* %arrayidx97.i1095, align 8, !tbaa !7
  store double %239, double* %arrayidx99.i, align 16, !tbaa !7
  %arrayidx1.i997 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 0
  %240 = load double, double* %arrayidx1.i997, align 8, !tbaa !7
  store double %240, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i999 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 1
  %241 = load double, double* %arrayidx5.i999, align 8, !tbaa !7
  store double %241, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i1001 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 2
  %242 = load double, double* %arrayidx9.i1001, align 8, !tbaa !7
  store double %242, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i1003 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 3
  %243 = load double, double* %arrayidx13.i1003, align 8, !tbaa !7
  store double %243, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i1005 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 4
  %244 = load double, double* %arrayidx17.i1005, align 8, !tbaa !7
  store double %244, double* %arrayidx19.i430, align 16, !tbaa !7
  %arrayidx21.i1007 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 0
  %245 = load double, double* %arrayidx21.i1007, align 8, !tbaa !7
  store double %245, double* %arrayidx23.i432, align 8, !tbaa !7
  %arrayidx25.i1009 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 1
  %246 = load double, double* %arrayidx25.i1009, align 8, !tbaa !7
  store double %246, double* %arrayidx27.i434, align 16, !tbaa !7
  %arrayidx29.i1011 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 2
  %247 = load double, double* %arrayidx29.i1011, align 8, !tbaa !7
  store double %247, double* %arrayidx31.i436, align 8, !tbaa !7
  %arrayidx33.i1013 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 3
  %248 = load double, double* %arrayidx33.i1013, align 8, !tbaa !7
  store double %248, double* %arrayidx35.i438, align 16, !tbaa !7
  %arrayidx37.i1015 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 4
  %249 = load double, double* %arrayidx37.i1015, align 8, !tbaa !7
  store double %249, double* %arrayidx39.i440, align 8, !tbaa !7
  %arrayidx41.i1017 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 0
  %250 = load double, double* %arrayidx41.i1017, align 8, !tbaa !7
  store double %250, double* %arrayidx43.i442, align 16, !tbaa !7
  %arrayidx45.i1019 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 1
  %251 = load double, double* %arrayidx45.i1019, align 8, !tbaa !7
  store double %251, double* %arrayidx47.i444, align 8, !tbaa !7
  %arrayidx49.i1021 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 2
  %252 = load double, double* %arrayidx49.i1021, align 8, !tbaa !7
  store double %252, double* %arrayidx51.i446, align 16, !tbaa !7
  %arrayidx53.i1023 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 3
  %253 = load double, double* %arrayidx53.i1023, align 8, !tbaa !7
  store double %253, double* %arrayidx55.i448, align 8, !tbaa !7
  %arrayidx57.i1025 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 4
  %254 = load double, double* %arrayidx57.i1025, align 8, !tbaa !7
  store double %254, double* %arrayidx59.i450, align 16, !tbaa !7
  %arrayidx61.i1027 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 0
  %255 = load double, double* %arrayidx61.i1027, align 8, !tbaa !7
  store double %255, double* %arrayidx63.i452, align 8, !tbaa !7
  %arrayidx65.i1029 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 1
  %256 = load double, double* %arrayidx65.i1029, align 8, !tbaa !7
  store double %256, double* %arrayidx67.i454, align 16, !tbaa !7
  %arrayidx69.i1031 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 2
  %257 = load double, double* %arrayidx69.i1031, align 8, !tbaa !7
  store double %257, double* %arrayidx71.i456, align 8, !tbaa !7
  %arrayidx73.i1033 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 3
  %258 = load double, double* %arrayidx73.i1033, align 8, !tbaa !7
  store double %258, double* %arrayidx75.i458, align 16, !tbaa !7
  %arrayidx77.i1035 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 4
  %259 = load double, double* %arrayidx77.i1035, align 8, !tbaa !7
  store double %259, double* %arrayidx79.i460, align 8, !tbaa !7
  %arrayidx81.i1037 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 0
  %260 = load double, double* %arrayidx81.i1037, align 8, !tbaa !7
  store double %260, double* %arrayidx83.i462, align 16, !tbaa !7
  %arrayidx85.i1039 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 1
  %261 = load double, double* %arrayidx85.i1039, align 8, !tbaa !7
  store double %261, double* %arrayidx87.i464, align 8, !tbaa !7
  %arrayidx89.i1041 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 2
  %262 = load double, double* %arrayidx89.i1041, align 8, !tbaa !7
  store double %262, double* %arrayidx91.i466, align 16, !tbaa !7
  %arrayidx93.i1043 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 3
  %263 = load double, double* %arrayidx93.i1043, align 8, !tbaa !7
  store double %263, double* %arrayidx95.i468, align 8, !tbaa !7
  %arrayidx97.i1045 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 4
  %264 = load double, double* %arrayidx97.i1045, align 8, !tbaa !7
  store double %264, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay78 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1222, i64 0
  %265 = load double, double* %arraydecay78, align 8, !tbaa !7
  %arrayidx2.i989 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1222, i64 1
  %266 = load double, double* %arrayidx2.i989, align 8, !tbaa !7
  %arrayidx4.i991 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1222, i64 2
  %267 = load double, double* %arrayidx4.i991, align 8, !tbaa !7
  %arrayidx6.i993 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1222, i64 3
  %268 = load double, double* %arrayidx6.i993, align 8, !tbaa !7
  %arrayidx8.i995 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1222, i64 4
  %269 = load double, double* %arrayidx8.i995, align 8, !tbaa !7
  %neg.i932 = fneg double %190
  %270 = call double @llvm.fmuladd.f64(double %neg.i932, double %164, double %265) #7
  %neg7.i935 = fneg double %195
  %271 = call double @llvm.fmuladd.f64(double %neg7.i935, double %163, double %270) #7
  %neg11.i938 = fneg double %200
  %272 = call double @llvm.fmuladd.f64(double %neg11.i938, double %162, double %271) #7
  %neg15.i941 = fneg double %205
  %273 = call double @llvm.fmuladd.f64(double %neg15.i941, double %161, double %272) #7
  %neg19.i944 = fneg double %210
  %274 = call double @llvm.fmuladd.f64(double %neg19.i944, double %160, double %273) #7
  store double %274, double* %arraydecay24, align 16, !tbaa !7
  %neg25.i947 = fneg double %191
  %275 = call double @llvm.fmuladd.f64(double %neg25.i947, double %164, double %266) #7
  %neg29.i949 = fneg double %196
  %276 = call double @llvm.fmuladd.f64(double %neg29.i949, double %163, double %275) #7
  %neg33.i951 = fneg double %201
  %277 = call double @llvm.fmuladd.f64(double %neg33.i951, double %162, double %276) #7
  %neg37.i953 = fneg double %206
  %278 = call double @llvm.fmuladd.f64(double %neg37.i953, double %161, double %277) #7
  %neg41.i955 = fneg double %211
  %279 = call double @llvm.fmuladd.f64(double %neg41.i955, double %160, double %278) #7
  store double %279, double* %arrayidx3.i472, align 8, !tbaa !7
  %neg47.i958 = fneg double %192
  %280 = call double @llvm.fmuladd.f64(double %neg47.i958, double %164, double %267) #7
  %neg51.i960 = fneg double %197
  %281 = call double @llvm.fmuladd.f64(double %neg51.i960, double %163, double %280) #7
  %neg55.i962 = fneg double %202
  %282 = call double @llvm.fmuladd.f64(double %neg55.i962, double %162, double %281) #7
  %neg59.i964 = fneg double %207
  %283 = call double @llvm.fmuladd.f64(double %neg59.i964, double %161, double %282) #7
  %neg63.i966 = fneg double %212
  %284 = call double @llvm.fmuladd.f64(double %neg63.i966, double %160, double %283) #7
  store double %284, double* %arrayidx5.i474, align 16, !tbaa !7
  %neg69.i969 = fneg double %193
  %285 = call double @llvm.fmuladd.f64(double %neg69.i969, double %164, double %268) #7
  %neg73.i971 = fneg double %198
  %286 = call double @llvm.fmuladd.f64(double %neg73.i971, double %163, double %285) #7
  %neg77.i973 = fneg double %203
  %287 = call double @llvm.fmuladd.f64(double %neg77.i973, double %162, double %286) #7
  %neg81.i975 = fneg double %208
  %288 = call double @llvm.fmuladd.f64(double %neg81.i975, double %161, double %287) #7
  %neg85.i977 = fneg double %213
  %289 = call double @llvm.fmuladd.f64(double %neg85.i977, double %160, double %288) #7
  store double %289, double* %arrayidx7.i476, align 8, !tbaa !7
  %neg91.i980 = fneg double %194
  %290 = call double @llvm.fmuladd.f64(double %neg91.i980, double %164, double %269) #7
  %neg95.i982 = fneg double %199
  %291 = call double @llvm.fmuladd.f64(double %neg95.i982, double %163, double %290) #7
  %neg99.i984 = fneg double %204
  %292 = call double @llvm.fmuladd.f64(double %neg99.i984, double %162, double %291) #7
  %neg103.i986 = fneg double %209
  %293 = call double @llvm.fmuladd.f64(double %neg103.i986, double %161, double %292) #7
  %neg107.i988 = fneg double %214
  %294 = call double @llvm.fmuladd.f64(double %neg107.i988, double %160, double %293) #7
  store double %294, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_matmul_sub([5 x double]* nonnull %arraydecay56, [5 x double]* nonnull %arraydecay52, [5 x double]* nonnull %arraydecay)
  call void @p_binvcrhs([5 x double]* nonnull %arraydecay, [5 x double]* nonnull %arraydecay20, double* nonnull %arraydecay24)
  %295 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %295, double* %arrayidx1.i1047, align 8, !tbaa !7
  %296 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %296, double* %arrayidx5.i1049, align 8, !tbaa !7
  %297 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %297, double* %arrayidx9.i1051, align 8, !tbaa !7
  %298 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %298, double* %arrayidx13.i1053, align 8, !tbaa !7
  %299 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %299, double* %arrayidx17.i1055, align 8, !tbaa !7
  %300 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %300, double* %arrayidx21.i1057, align 8, !tbaa !7
  %301 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %301, double* %arrayidx25.i1059, align 8, !tbaa !7
  %302 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %302, double* %arrayidx29.i1061, align 8, !tbaa !7
  %303 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %303, double* %arrayidx33.i1063, align 8, !tbaa !7
  %304 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %304, double* %arrayidx37.i1065, align 8, !tbaa !7
  %305 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %305, double* %arrayidx41.i1067, align 8, !tbaa !7
  %306 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %306, double* %arrayidx45.i1069, align 8, !tbaa !7
  %307 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %307, double* %arrayidx49.i1071, align 8, !tbaa !7
  %308 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %308, double* %arrayidx53.i1073, align 8, !tbaa !7
  %309 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %309, double* %arrayidx57.i1075, align 8, !tbaa !7
  %310 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %310, double* %arrayidx61.i1077, align 8, !tbaa !7
  %311 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %311, double* %arrayidx65.i1079, align 8, !tbaa !7
  %312 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %312, double* %arrayidx69.i1081, align 8, !tbaa !7
  %313 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %313, double* %arrayidx73.i1083, align 8, !tbaa !7
  %314 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %314, double* %arrayidx77.i1085, align 8, !tbaa !7
  %315 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %315, double* %arrayidx81.i1087, align 8, !tbaa !7
  %316 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %316, double* %arrayidx85.i1089, align 8, !tbaa !7
  %317 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %317, double* %arrayidx89.i1091, align 8, !tbaa !7
  %318 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %318, double* %arrayidx93.i1093, align 8, !tbaa !7
  %319 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %319, double* %arrayidx97.i1095, align 8, !tbaa !7
  %320 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %320, double* %arrayidx1.i997, align 8, !tbaa !7
  %321 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %321, double* %arrayidx5.i999, align 8, !tbaa !7
  %322 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %322, double* %arrayidx9.i1001, align 8, !tbaa !7
  %323 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %323, double* %arrayidx13.i1003, align 8, !tbaa !7
  %324 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %324, double* %arrayidx17.i1005, align 8, !tbaa !7
  %325 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %325, double* %arrayidx21.i1007, align 8, !tbaa !7
  %326 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %326, double* %arrayidx25.i1009, align 8, !tbaa !7
  %327 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %327, double* %arrayidx29.i1011, align 8, !tbaa !7
  %328 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %328, double* %arrayidx33.i1013, align 8, !tbaa !7
  %329 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %329, double* %arrayidx37.i1015, align 8, !tbaa !7
  %330 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %330, double* %arrayidx41.i1017, align 8, !tbaa !7
  %331 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %331, double* %arrayidx45.i1019, align 8, !tbaa !7
  %332 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %332, double* %arrayidx49.i1021, align 8, !tbaa !7
  %333 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %333, double* %arrayidx53.i1023, align 8, !tbaa !7
  %334 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %334, double* %arrayidx57.i1025, align 8, !tbaa !7
  %335 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %335, double* %arrayidx61.i1027, align 8, !tbaa !7
  %336 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %336, double* %arrayidx65.i1029, align 8, !tbaa !7
  %337 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %337, double* %arrayidx69.i1031, align 8, !tbaa !7
  %338 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %338, double* %arrayidx73.i1033, align 8, !tbaa !7
  %339 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %339, double* %arrayidx77.i1035, align 8, !tbaa !7
  %340 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %340, double* %arrayidx81.i1037, align 8, !tbaa !7
  %341 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %341, double* %arrayidx85.i1039, align 8, !tbaa !7
  %342 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %342, double* %arrayidx89.i1041, align 8, !tbaa !7
  %343 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %343, double* %arrayidx93.i1043, align 8, !tbaa !7
  %344 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %344, double* %arrayidx97.i1045, align 8, !tbaa !7
  %345 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %345, double* %arraydecay78, align 8, !tbaa !7
  %346 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %346, double* %arrayidx2.i989, align 8, !tbaa !7
  %347 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %347, double* %arrayidx4.i991, align 8, !tbaa !7
  %348 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %348, double* %arrayidx6.i993, align 8, !tbaa !7
  %349 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %349, double* %arrayidx8.i995, align 8, !tbaa !7
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 1
  %exitcond1224.not = icmp eq i64 %indvars.iv.next1223, %wide.trip.count
  br i1 %exitcond1224.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %350 = phi double [ %159, %if.end ], [ %349, %for.body ]
  %351 = phi double [ %158, %if.end ], [ %348, %for.body ]
  %352 = phi double [ %157, %if.end ], [ %347, %for.body ]
  %353 = phi double [ %156, %if.end ], [ %346, %for.body ]
  %354 = phi double [ %155, %if.end ], [ %345, %for.body ]
  %355 = phi double [ %154, %if.end ], [ %344, %for.body ]
  %356 = phi double [ %153, %if.end ], [ %343, %for.body ]
  %357 = phi double [ %152, %if.end ], [ %342, %for.body ]
  %358 = phi double [ %151, %if.end ], [ %341, %for.body ]
  %359 = phi double [ %150, %if.end ], [ %340, %for.body ]
  %360 = phi double [ %149, %if.end ], [ %339, %for.body ]
  %361 = phi double [ %148, %if.end ], [ %338, %for.body ]
  %362 = phi double [ %147, %if.end ], [ %337, %for.body ]
  %363 = phi double [ %146, %if.end ], [ %336, %for.body ]
  %364 = phi double [ %145, %if.end ], [ %335, %for.body ]
  %365 = phi double [ %144, %if.end ], [ %334, %for.body ]
  %366 = phi double [ %143, %if.end ], [ %333, %for.body ]
  %367 = phi double [ %142, %if.end ], [ %332, %for.body ]
  %368 = phi double [ %141, %if.end ], [ %331, %for.body ]
  %369 = phi double [ %140, %if.end ], [ %330, %for.body ]
  %370 = phi double [ %139, %if.end ], [ %329, %for.body ]
  %371 = phi double [ %138, %if.end ], [ %328, %for.body ]
  %372 = phi double [ %137, %if.end ], [ %327, %for.body ]
  %373 = phi double [ %136, %if.end ], [ %326, %for.body ]
  %374 = phi double [ %135, %if.end ], [ %325, %for.body ]
  %375 = phi double [ %134, %if.end ], [ %324, %for.body ]
  %376 = phi double [ %133, %if.end ], [ %323, %for.body ]
  %377 = phi double [ %132, %if.end ], [ %322, %for.body ]
  %378 = phi double [ %131, %if.end ], [ %321, %for.body ]
  %379 = phi double [ %130, %if.end ], [ %320, %for.body ]
  %arraydecay106 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0
  %arrayidx3.i674 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 0
  store double %379, double* %arrayidx3.i674, align 16, !tbaa !7
  %arrayidx7.i676 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 1
  store double %378, double* %arrayidx7.i676, align 8, !tbaa !7
  %arrayidx11.i678 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 2
  store double %377, double* %arrayidx11.i678, align 16, !tbaa !7
  %arrayidx15.i680 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 3
  store double %376, double* %arrayidx15.i680, align 8, !tbaa !7
  %arrayidx19.i682 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 4
  store double %375, double* %arrayidx19.i682, align 16, !tbaa !7
  %arrayidx23.i684 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 0
  store double %374, double* %arrayidx23.i684, align 8, !tbaa !7
  %arrayidx27.i686 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 1
  store double %373, double* %arrayidx27.i686, align 16, !tbaa !7
  %arrayidx31.i688 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 2
  store double %372, double* %arrayidx31.i688, align 8, !tbaa !7
  %arrayidx35.i690 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 3
  store double %371, double* %arrayidx35.i690, align 16, !tbaa !7
  %arrayidx39.i692 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 4
  store double %370, double* %arrayidx39.i692, align 8, !tbaa !7
  %arrayidx43.i694 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 0
  store double %369, double* %arrayidx43.i694, align 16, !tbaa !7
  %arrayidx47.i696 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 1
  store double %368, double* %arrayidx47.i696, align 8, !tbaa !7
  %arrayidx51.i698 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 2
  store double %367, double* %arrayidx51.i698, align 16, !tbaa !7
  %arrayidx55.i700 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 3
  store double %366, double* %arrayidx55.i700, align 8, !tbaa !7
  %arrayidx59.i702 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 4
  store double %365, double* %arrayidx59.i702, align 16, !tbaa !7
  %arrayidx63.i704 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 0
  store double %364, double* %arrayidx63.i704, align 8, !tbaa !7
  %arrayidx67.i706 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 1
  store double %363, double* %arrayidx67.i706, align 16, !tbaa !7
  %arrayidx71.i708 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 2
  store double %362, double* %arrayidx71.i708, align 8, !tbaa !7
  %arrayidx75.i710 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 3
  store double %361, double* %arrayidx75.i710, align 16, !tbaa !7
  %arrayidx79.i712 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 4
  store double %360, double* %arrayidx79.i712, align 8, !tbaa !7
  %arrayidx83.i714 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 0
  store double %359, double* %arrayidx83.i714, align 16, !tbaa !7
  %arrayidx87.i716 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 1
  store double %358, double* %arrayidx87.i716, align 8, !tbaa !7
  %arrayidx91.i718 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 2
  store double %357, double* %arrayidx91.i718, align 16, !tbaa !7
  %arrayidx95.i720 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 3
  store double %356, double* %arrayidx95.i720, align 8, !tbaa !7
  %arrayidx99.i722 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 4
  store double %355, double* %arrayidx99.i722, align 16, !tbaa !7
  %arraydecay108 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  store double %354, double* %arraydecay108, align 16, !tbaa !7
  %arrayidx3.i666 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  store double %353, double* %arrayidx3.i666, align 8, !tbaa !7
  %arrayidx5.i668 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  store double %352, double* %arrayidx5.i668, align 16, !tbaa !7
  %arrayidx7.i670 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  store double %351, double* %arrayidx7.i670, align 8, !tbaa !7
  %arrayidx9.i672 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  store double %350, double* %arrayidx9.i672, align 16, !tbaa !7
  %arraydecay110 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0
  %idxprom111 = sext i32 %sub16 to i64
  %arrayidx1.i615 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 0
  %380 = load double, double* %arrayidx1.i615, align 8, !tbaa !7
  %arrayidx3.i616 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 0
  store double %380, double* %arrayidx3.i616, align 16, !tbaa !7
  %arrayidx5.i617 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 1
  %381 = load double, double* %arrayidx5.i617, align 8, !tbaa !7
  %arrayidx7.i618 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 1
  store double %381, double* %arrayidx7.i618, align 8, !tbaa !7
  %arrayidx9.i619 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 2
  %382 = load double, double* %arrayidx9.i619, align 8, !tbaa !7
  %arrayidx11.i620 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 2
  store double %382, double* %arrayidx11.i620, align 16, !tbaa !7
  %arrayidx13.i621 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 3
  %383 = load double, double* %arrayidx13.i621, align 8, !tbaa !7
  %arrayidx15.i622 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 3
  store double %383, double* %arrayidx15.i622, align 8, !tbaa !7
  %arrayidx17.i623 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 4
  %384 = load double, double* %arrayidx17.i623, align 8, !tbaa !7
  %arrayidx19.i624 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 4
  store double %384, double* %arrayidx19.i624, align 16, !tbaa !7
  %arrayidx21.i625 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 0
  %385 = load double, double* %arrayidx21.i625, align 8, !tbaa !7
  %arrayidx23.i626 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 0
  store double %385, double* %arrayidx23.i626, align 8, !tbaa !7
  %arrayidx25.i627 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 1
  %386 = load double, double* %arrayidx25.i627, align 8, !tbaa !7
  %arrayidx27.i628 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 1
  store double %386, double* %arrayidx27.i628, align 16, !tbaa !7
  %arrayidx29.i629 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 2
  %387 = load double, double* %arrayidx29.i629, align 8, !tbaa !7
  %arrayidx31.i630 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 2
  store double %387, double* %arrayidx31.i630, align 8, !tbaa !7
  %arrayidx33.i631 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 3
  %388 = load double, double* %arrayidx33.i631, align 8, !tbaa !7
  %arrayidx35.i632 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 3
  store double %388, double* %arrayidx35.i632, align 16, !tbaa !7
  %arrayidx37.i633 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 4
  %389 = load double, double* %arrayidx37.i633, align 8, !tbaa !7
  %arrayidx39.i634 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 4
  store double %389, double* %arrayidx39.i634, align 8, !tbaa !7
  %arrayidx41.i635 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 0
  %390 = load double, double* %arrayidx41.i635, align 8, !tbaa !7
  %arrayidx43.i636 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 0
  store double %390, double* %arrayidx43.i636, align 16, !tbaa !7
  %arrayidx45.i637 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 1
  %391 = load double, double* %arrayidx45.i637, align 8, !tbaa !7
  %arrayidx47.i638 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 1
  store double %391, double* %arrayidx47.i638, align 8, !tbaa !7
  %arrayidx49.i639 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 2
  %392 = load double, double* %arrayidx49.i639, align 8, !tbaa !7
  %arrayidx51.i640 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 2
  store double %392, double* %arrayidx51.i640, align 16, !tbaa !7
  %arrayidx53.i641 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 3
  %393 = load double, double* %arrayidx53.i641, align 8, !tbaa !7
  %arrayidx55.i642 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 3
  store double %393, double* %arrayidx55.i642, align 8, !tbaa !7
  %arrayidx57.i643 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 4
  %394 = load double, double* %arrayidx57.i643, align 8, !tbaa !7
  %arrayidx59.i644 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 4
  store double %394, double* %arrayidx59.i644, align 16, !tbaa !7
  %arrayidx61.i645 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 0
  %395 = load double, double* %arrayidx61.i645, align 8, !tbaa !7
  %arrayidx63.i646 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 0
  store double %395, double* %arrayidx63.i646, align 8, !tbaa !7
  %arrayidx65.i647 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 1
  %396 = load double, double* %arrayidx65.i647, align 8, !tbaa !7
  %arrayidx67.i648 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 1
  store double %396, double* %arrayidx67.i648, align 16, !tbaa !7
  %arrayidx69.i649 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 2
  %397 = load double, double* %arrayidx69.i649, align 8, !tbaa !7
  %arrayidx71.i650 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 2
  store double %397, double* %arrayidx71.i650, align 8, !tbaa !7
  %arrayidx73.i651 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 3
  %398 = load double, double* %arrayidx73.i651, align 8, !tbaa !7
  %arrayidx75.i652 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 3
  store double %398, double* %arrayidx75.i652, align 16, !tbaa !7
  %arrayidx77.i653 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 4
  %399 = load double, double* %arrayidx77.i653, align 8, !tbaa !7
  %arrayidx79.i654 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 4
  store double %399, double* %arrayidx79.i654, align 8, !tbaa !7
  %arrayidx81.i655 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 0
  %400 = load double, double* %arrayidx81.i655, align 8, !tbaa !7
  %arrayidx83.i656 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 0
  store double %400, double* %arrayidx83.i656, align 16, !tbaa !7
  %arrayidx85.i657 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 1
  %401 = load double, double* %arrayidx85.i657, align 8, !tbaa !7
  %arrayidx87.i658 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 1
  store double %401, double* %arrayidx87.i658, align 8, !tbaa !7
  %arrayidx89.i659 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 2
  %402 = load double, double* %arrayidx89.i659, align 8, !tbaa !7
  %arrayidx91.i660 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 2
  store double %402, double* %arrayidx91.i660, align 16, !tbaa !7
  %arrayidx93.i661 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 3
  %403 = load double, double* %arrayidx93.i661, align 8, !tbaa !7
  %arrayidx95.i662 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 3
  store double %403, double* %arrayidx95.i662, align 8, !tbaa !7
  %arrayidx97.i663 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 4
  %404 = load double, double* %arrayidx97.i663, align 8, !tbaa !7
  %arrayidx99.i664 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 4
  store double %404, double* %arrayidx99.i664, align 16, !tbaa !7
  %arrayidx1.i565 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 0
  %405 = load double, double* %arrayidx1.i565, align 8, !tbaa !7
  store double %405, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i567 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 1
  %406 = load double, double* %arrayidx5.i567, align 8, !tbaa !7
  store double %406, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i569 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 2
  %407 = load double, double* %arrayidx9.i569, align 8, !tbaa !7
  store double %407, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i571 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 3
  %408 = load double, double* %arrayidx13.i571, align 8, !tbaa !7
  store double %408, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i573 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 4
  %409 = load double, double* %arrayidx17.i573, align 8, !tbaa !7
  store double %409, double* %arrayidx19.i, align 16, !tbaa !7
  %arrayidx21.i575 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 0
  %410 = load double, double* %arrayidx21.i575, align 8, !tbaa !7
  store double %410, double* %arrayidx23.i, align 8, !tbaa !7
  %arrayidx25.i577 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 1
  %411 = load double, double* %arrayidx25.i577, align 8, !tbaa !7
  store double %411, double* %arrayidx27.i, align 16, !tbaa !7
  %arrayidx29.i579 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 2
  %412 = load double, double* %arrayidx29.i579, align 8, !tbaa !7
  store double %412, double* %arrayidx31.i, align 8, !tbaa !7
  %arrayidx33.i581 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 3
  %413 = load double, double* %arrayidx33.i581, align 8, !tbaa !7
  store double %413, double* %arrayidx35.i, align 16, !tbaa !7
  %arrayidx37.i583 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 4
  %414 = load double, double* %arrayidx37.i583, align 8, !tbaa !7
  store double %414, double* %arrayidx39.i, align 8, !tbaa !7
  %arrayidx41.i585 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 0
  %415 = load double, double* %arrayidx41.i585, align 8, !tbaa !7
  store double %415, double* %arrayidx43.i, align 16, !tbaa !7
  %arrayidx45.i587 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 1
  %416 = load double, double* %arrayidx45.i587, align 8, !tbaa !7
  store double %416, double* %arrayidx47.i, align 8, !tbaa !7
  %arrayidx49.i589 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 2
  %417 = load double, double* %arrayidx49.i589, align 8, !tbaa !7
  store double %417, double* %arrayidx51.i, align 16, !tbaa !7
  %arrayidx53.i591 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 3
  %418 = load double, double* %arrayidx53.i591, align 8, !tbaa !7
  store double %418, double* %arrayidx55.i, align 8, !tbaa !7
  %arrayidx57.i593 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 4
  %419 = load double, double* %arrayidx57.i593, align 8, !tbaa !7
  store double %419, double* %arrayidx59.i, align 16, !tbaa !7
  %arrayidx61.i595 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 0
  %420 = load double, double* %arrayidx61.i595, align 8, !tbaa !7
  store double %420, double* %arrayidx63.i, align 8, !tbaa !7
  %arrayidx65.i597 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 1
  %421 = load double, double* %arrayidx65.i597, align 8, !tbaa !7
  store double %421, double* %arrayidx67.i, align 16, !tbaa !7
  %arrayidx69.i599 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 2
  %422 = load double, double* %arrayidx69.i599, align 8, !tbaa !7
  store double %422, double* %arrayidx71.i, align 8, !tbaa !7
  %arrayidx73.i601 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 3
  %423 = load double, double* %arrayidx73.i601, align 8, !tbaa !7
  store double %423, double* %arrayidx75.i, align 16, !tbaa !7
  %arrayidx77.i603 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 4
  %424 = load double, double* %arrayidx77.i603, align 8, !tbaa !7
  store double %424, double* %arrayidx79.i, align 8, !tbaa !7
  %arrayidx81.i605 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 0
  %425 = load double, double* %arrayidx81.i605, align 8, !tbaa !7
  store double %425, double* %arrayidx83.i, align 16, !tbaa !7
  %arrayidx85.i607 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 1
  %426 = load double, double* %arrayidx85.i607, align 8, !tbaa !7
  store double %426, double* %arrayidx87.i, align 8, !tbaa !7
  %arrayidx89.i609 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 2
  %427 = load double, double* %arrayidx89.i609, align 8, !tbaa !7
  store double %427, double* %arrayidx91.i, align 16, !tbaa !7
  %arrayidx93.i611 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 3
  %428 = load double, double* %arrayidx93.i611, align 8, !tbaa !7
  store double %428, double* %arrayidx95.i, align 8, !tbaa !7
  %arrayidx97.i613 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 4
  %429 = load double, double* %arrayidx97.i613, align 8, !tbaa !7
  store double %429, double* %arrayidx99.i, align 16, !tbaa !7
  %arrayidx1.i515 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 0
  %430 = load double, double* %arrayidx1.i515, align 8, !tbaa !7
  store double %430, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i517 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 1
  %431 = load double, double* %arrayidx5.i517, align 8, !tbaa !7
  store double %431, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i519 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 2
  %432 = load double, double* %arrayidx9.i519, align 8, !tbaa !7
  store double %432, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i521 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 3
  %433 = load double, double* %arrayidx13.i521, align 8, !tbaa !7
  store double %433, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i523 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 4
  %434 = load double, double* %arrayidx17.i523, align 8, !tbaa !7
  store double %434, double* %arrayidx19.i430, align 16, !tbaa !7
  %arrayidx21.i525 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 0
  %435 = load double, double* %arrayidx21.i525, align 8, !tbaa !7
  store double %435, double* %arrayidx23.i432, align 8, !tbaa !7
  %arrayidx25.i527 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 1
  %436 = load double, double* %arrayidx25.i527, align 8, !tbaa !7
  store double %436, double* %arrayidx27.i434, align 16, !tbaa !7
  %arrayidx29.i529 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 2
  %437 = load double, double* %arrayidx29.i529, align 8, !tbaa !7
  store double %437, double* %arrayidx31.i436, align 8, !tbaa !7
  %arrayidx33.i531 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 3
  %438 = load double, double* %arrayidx33.i531, align 8, !tbaa !7
  store double %438, double* %arrayidx35.i438, align 16, !tbaa !7
  %arrayidx37.i533 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 4
  %439 = load double, double* %arrayidx37.i533, align 8, !tbaa !7
  store double %439, double* %arrayidx39.i440, align 8, !tbaa !7
  %arrayidx41.i535 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 0
  %440 = load double, double* %arrayidx41.i535, align 8, !tbaa !7
  store double %440, double* %arrayidx43.i442, align 16, !tbaa !7
  %arrayidx45.i537 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 1
  %441 = load double, double* %arrayidx45.i537, align 8, !tbaa !7
  store double %441, double* %arrayidx47.i444, align 8, !tbaa !7
  %arrayidx49.i539 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 2
  %442 = load double, double* %arrayidx49.i539, align 8, !tbaa !7
  store double %442, double* %arrayidx51.i446, align 16, !tbaa !7
  %arrayidx53.i541 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 3
  %443 = load double, double* %arrayidx53.i541, align 8, !tbaa !7
  store double %443, double* %arrayidx55.i448, align 8, !tbaa !7
  %arrayidx57.i543 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 4
  %444 = load double, double* %arrayidx57.i543, align 8, !tbaa !7
  store double %444, double* %arrayidx59.i450, align 16, !tbaa !7
  %arrayidx61.i545 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 0
  %445 = load double, double* %arrayidx61.i545, align 8, !tbaa !7
  store double %445, double* %arrayidx63.i452, align 8, !tbaa !7
  %arrayidx65.i547 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 1
  %446 = load double, double* %arrayidx65.i547, align 8, !tbaa !7
  store double %446, double* %arrayidx67.i454, align 16, !tbaa !7
  %arrayidx69.i549 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 2
  %447 = load double, double* %arrayidx69.i549, align 8, !tbaa !7
  store double %447, double* %arrayidx71.i456, align 8, !tbaa !7
  %arrayidx73.i551 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 3
  %448 = load double, double* %arrayidx73.i551, align 8, !tbaa !7
  store double %448, double* %arrayidx75.i458, align 16, !tbaa !7
  %arrayidx77.i553 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 4
  %449 = load double, double* %arrayidx77.i553, align 8, !tbaa !7
  store double %449, double* %arrayidx79.i460, align 8, !tbaa !7
  %arrayidx81.i555 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 0
  %450 = load double, double* %arrayidx81.i555, align 8, !tbaa !7
  store double %450, double* %arrayidx83.i462, align 16, !tbaa !7
  %arrayidx85.i557 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 1
  %451 = load double, double* %arrayidx85.i557, align 8, !tbaa !7
  store double %451, double* %arrayidx87.i464, align 8, !tbaa !7
  %arrayidx89.i559 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 2
  %452 = load double, double* %arrayidx89.i559, align 8, !tbaa !7
  store double %452, double* %arrayidx91.i466, align 16, !tbaa !7
  %arrayidx93.i561 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 3
  %453 = load double, double* %arrayidx93.i561, align 8, !tbaa !7
  store double %453, double* %arrayidx95.i468, align 8, !tbaa !7
  %arrayidx97.i563 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 4
  %454 = load double, double* %arrayidx97.i563, align 8, !tbaa !7
  store double %454, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay132 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %idxprom111, i64 0
  %455 = load double, double* %arraydecay132, align 8, !tbaa !7
  %arrayidx2.i507 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %idxprom111, i64 1
  %456 = load double, double* %arrayidx2.i507, align 8, !tbaa !7
  %arrayidx4.i509 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %idxprom111, i64 2
  %457 = load double, double* %arrayidx4.i509, align 8, !tbaa !7
  %arrayidx6.i511 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %idxprom111, i64 3
  %458 = load double, double* %arrayidx6.i511, align 8, !tbaa !7
  %arrayidx8.i513 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %idxprom111, i64 4
  %459 = load double, double* %arrayidx8.i513, align 8, !tbaa !7
  %neg.i = fneg double %380
  %460 = call double @llvm.fmuladd.f64(double %neg.i, double %354, double %455) #7
  %neg7.i = fneg double %385
  %461 = call double @llvm.fmuladd.f64(double %neg7.i, double %353, double %460) #7
  %neg11.i = fneg double %390
  %462 = call double @llvm.fmuladd.f64(double %neg11.i, double %352, double %461) #7
  %neg15.i = fneg double %395
  %463 = call double @llvm.fmuladd.f64(double %neg15.i, double %351, double %462) #7
  %neg19.i = fneg double %400
  %464 = call double @llvm.fmuladd.f64(double %neg19.i, double %350, double %463) #7
  store double %464, double* %arraydecay24, align 16, !tbaa !7
  %neg25.i = fneg double %381
  %465 = call double @llvm.fmuladd.f64(double %neg25.i, double %354, double %456) #7
  %neg29.i = fneg double %386
  %466 = call double @llvm.fmuladd.f64(double %neg29.i, double %353, double %465) #7
  %neg33.i = fneg double %391
  %467 = call double @llvm.fmuladd.f64(double %neg33.i, double %352, double %466) #7
  %neg37.i = fneg double %396
  %468 = call double @llvm.fmuladd.f64(double %neg37.i, double %351, double %467) #7
  %neg41.i = fneg double %401
  %469 = call double @llvm.fmuladd.f64(double %neg41.i, double %350, double %468) #7
  store double %469, double* %arrayidx3.i472, align 8, !tbaa !7
  %neg47.i = fneg double %382
  %470 = call double @llvm.fmuladd.f64(double %neg47.i, double %354, double %457) #7
  %neg51.i = fneg double %387
  %471 = call double @llvm.fmuladd.f64(double %neg51.i, double %353, double %470) #7
  %neg55.i = fneg double %392
  %472 = call double @llvm.fmuladd.f64(double %neg55.i, double %352, double %471) #7
  %neg59.i = fneg double %397
  %473 = call double @llvm.fmuladd.f64(double %neg59.i, double %351, double %472) #7
  %neg63.i = fneg double %402
  %474 = call double @llvm.fmuladd.f64(double %neg63.i, double %350, double %473) #7
  store double %474, double* %arrayidx5.i474, align 16, !tbaa !7
  %neg69.i = fneg double %383
  %475 = call double @llvm.fmuladd.f64(double %neg69.i, double %354, double %458) #7
  %neg73.i = fneg double %388
  %476 = call double @llvm.fmuladd.f64(double %neg73.i, double %353, double %475) #7
  %neg77.i = fneg double %393
  %477 = call double @llvm.fmuladd.f64(double %neg77.i, double %352, double %476) #7
  %neg81.i = fneg double %398
  %478 = call double @llvm.fmuladd.f64(double %neg81.i, double %351, double %477) #7
  %neg85.i = fneg double %403
  %479 = call double @llvm.fmuladd.f64(double %neg85.i, double %350, double %478) #7
  store double %479, double* %arrayidx7.i476, align 8, !tbaa !7
  %neg91.i = fneg double %384
  %480 = call double @llvm.fmuladd.f64(double %neg91.i, double %354, double %459) #7
  %neg95.i = fneg double %389
  %481 = call double @llvm.fmuladd.f64(double %neg95.i, double %353, double %480) #7
  %neg99.i = fneg double %394
  %482 = call double @llvm.fmuladd.f64(double %neg99.i, double %352, double %481) #7
  %neg103.i = fneg double %399
  %483 = call double @llvm.fmuladd.f64(double %neg103.i, double %351, double %482) #7
  %neg107.i = fneg double %404
  %484 = call double @llvm.fmuladd.f64(double %neg107.i, double %350, double %483) #7
  store double %484, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_matmul_sub([5 x double]* nonnull %arraydecay110, [5 x double]* nonnull %arraydecay106, [5 x double]* nonnull %arraydecay)
  call void @p_binvrhs([5 x double]* nonnull %arraydecay, double* nonnull %arraydecay24)
  %485 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %485, double* %arrayidx1.i565, align 8, !tbaa !7
  %486 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %486, double* %arrayidx5.i567, align 8, !tbaa !7
  %487 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %487, double* %arrayidx9.i569, align 8, !tbaa !7
  %488 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %488, double* %arrayidx13.i571, align 8, !tbaa !7
  %489 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %489, double* %arrayidx17.i573, align 8, !tbaa !7
  %490 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %490, double* %arrayidx21.i575, align 8, !tbaa !7
  %491 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %491, double* %arrayidx25.i577, align 8, !tbaa !7
  %492 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %492, double* %arrayidx29.i579, align 8, !tbaa !7
  %493 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %493, double* %arrayidx33.i581, align 8, !tbaa !7
  %494 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %494, double* %arrayidx37.i583, align 8, !tbaa !7
  %495 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %495, double* %arrayidx41.i585, align 8, !tbaa !7
  %496 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %496, double* %arrayidx45.i587, align 8, !tbaa !7
  %497 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %497, double* %arrayidx49.i589, align 8, !tbaa !7
  %498 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %498, double* %arrayidx53.i591, align 8, !tbaa !7
  %499 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %499, double* %arrayidx57.i593, align 8, !tbaa !7
  %500 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %500, double* %arrayidx61.i595, align 8, !tbaa !7
  %501 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %501, double* %arrayidx65.i597, align 8, !tbaa !7
  %502 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %502, double* %arrayidx69.i599, align 8, !tbaa !7
  %503 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %503, double* %arrayidx73.i601, align 8, !tbaa !7
  %504 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %504, double* %arrayidx77.i603, align 8, !tbaa !7
  %505 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %505, double* %arrayidx81.i605, align 8, !tbaa !7
  %506 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %506, double* %arrayidx85.i607, align 8, !tbaa !7
  %507 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %507, double* %arrayidx89.i609, align 8, !tbaa !7
  %508 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %508, double* %arrayidx93.i611, align 8, !tbaa !7
  %509 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %509, double* %arrayidx97.i613, align 8, !tbaa !7
  %510 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %510, double* %arrayidx1.i515, align 8, !tbaa !7
  %511 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %511, double* %arrayidx5.i517, align 8, !tbaa !7
  %512 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %512, double* %arrayidx9.i519, align 8, !tbaa !7
  %513 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %513, double* %arrayidx13.i521, align 8, !tbaa !7
  %514 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %514, double* %arrayidx17.i523, align 8, !tbaa !7
  %515 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %515, double* %arrayidx21.i525, align 8, !tbaa !7
  %516 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %516, double* %arrayidx25.i527, align 8, !tbaa !7
  %517 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %517, double* %arrayidx29.i529, align 8, !tbaa !7
  %518 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %518, double* %arrayidx33.i531, align 8, !tbaa !7
  %519 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %519, double* %arrayidx37.i533, align 8, !tbaa !7
  %520 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %520, double* %arrayidx41.i535, align 8, !tbaa !7
  %521 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %521, double* %arrayidx45.i537, align 8, !tbaa !7
  %522 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %522, double* %arrayidx49.i539, align 8, !tbaa !7
  %523 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %523, double* %arrayidx53.i541, align 8, !tbaa !7
  %524 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %524, double* %arrayidx57.i543, align 8, !tbaa !7
  %525 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %525, double* %arrayidx61.i545, align 8, !tbaa !7
  %526 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %526, double* %arrayidx65.i547, align 8, !tbaa !7
  %527 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %527, double* %arrayidx69.i549, align 8, !tbaa !7
  %528 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %528, double* %arrayidx73.i551, align 8, !tbaa !7
  %529 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %529, double* %arrayidx77.i553, align 8, !tbaa !7
  %530 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %530, double* %arrayidx81.i555, align 8, !tbaa !7
  %531 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %531, double* %arrayidx85.i557, align 8, !tbaa !7
  %532 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %532, double* %arrayidx89.i559, align 8, !tbaa !7
  %533 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %533, double* %arrayidx93.i561, align 8, !tbaa !7
  %534 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %534, double* %arrayidx97.i563, align 8, !tbaa !7
  %535 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %535, double* %arraydecay132, align 8, !tbaa !7
  %536 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %536, double* %arrayidx2.i507, align 8, !tbaa !7
  %537 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %537, double* %arrayidx4.i509, align 8, !tbaa !7
  %538 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %538, double* %arrayidx6.i511, align 8, !tbaa !7
  %539 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %539, double* %arrayidx8.i513, align 8, !tbaa !7
  %cmp1611215 = icmp sgt i32 %gp0, 1
  br i1 %cmp1611215, label %for.cond164.preheader.preheader, label %cleanup

for.cond164.preheader.preheader:                  ; preds = %for.end
  %540 = add nsw i32 %gp0, -2
  %541 = sext i32 %540 to i64
  %arrayidx177 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  %arrayidx177.1 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  %arrayidx177.2 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  %arrayidx177.3 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  %arrayidx177.4 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  br label %for.cond164.preheader

for.cond164.preheader:                            ; preds = %for.cond164.preheader.preheader, %for.cond164.preheader
  %542 = phi double [ %539, %for.cond164.preheader.preheader ], [ %601, %for.cond164.preheader ]
  %543 = phi double [ %538, %for.cond164.preheader.preheader ], [ %590, %for.cond164.preheader ]
  %544 = phi double [ %537, %for.cond164.preheader.preheader ], [ %579, %for.cond164.preheader ]
  %545 = phi double [ %536, %for.cond164.preheader.preheader ], [ %568, %for.cond164.preheader ]
  %546 = phi double [ %535, %for.cond164.preheader.preheader ], [ %557, %for.cond164.preheader ]
  %indvars.iv1220 = phi i64 [ %541, %for.cond164.preheader.preheader ], [ %indvars.iv.next1221, %for.cond164.preheader ]
  %arrayidx175 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1220, i64 0
  %547 = load double, double* %arrayidx175, align 8, !tbaa !7
  %arrayidx190 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 0
  %548 = load double, double* %arrayidx190, align 8, !tbaa !7
  %neg = fneg double %548
  %549 = call double @llvm.fmuladd.f64(double %neg, double %546, double %547)
  %arrayidx190.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 0
  %550 = load double, double* %arrayidx190.1, align 8, !tbaa !7
  %neg.1 = fneg double %550
  %551 = call double @llvm.fmuladd.f64(double %neg.1, double %545, double %549)
  %arrayidx190.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 0
  %552 = load double, double* %arrayidx190.2, align 8, !tbaa !7
  %neg.2 = fneg double %552
  %553 = call double @llvm.fmuladd.f64(double %neg.2, double %544, double %551)
  %arrayidx190.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 0
  %554 = load double, double* %arrayidx190.3, align 8, !tbaa !7
  %neg.3 = fneg double %554
  %555 = call double @llvm.fmuladd.f64(double %neg.3, double %543, double %553)
  %arrayidx190.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 0
  %556 = load double, double* %arrayidx190.4, align 8, !tbaa !7
  %neg.4 = fneg double %556
  %557 = call double @llvm.fmuladd.f64(double %neg.4, double %542, double %555)
  store double %557, double* %arrayidx175, align 8, !tbaa !7
  %arrayidx175.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1220, i64 1
  %558 = load double, double* %arrayidx175.1, align 8, !tbaa !7
  %arrayidx190.11312 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 1
  %559 = load double, double* %arrayidx190.11312, align 8, !tbaa !7
  %neg.11313 = fneg double %559
  %560 = call double @llvm.fmuladd.f64(double %neg.11313, double %546, double %558)
  %arrayidx190.1.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 1
  %561 = load double, double* %arrayidx190.1.1, align 8, !tbaa !7
  %neg.1.1 = fneg double %561
  %562 = call double @llvm.fmuladd.f64(double %neg.1.1, double %545, double %560)
  %arrayidx190.2.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 1
  %563 = load double, double* %arrayidx190.2.1, align 8, !tbaa !7
  %neg.2.1 = fneg double %563
  %564 = call double @llvm.fmuladd.f64(double %neg.2.1, double %544, double %562)
  %arrayidx190.3.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 1
  %565 = load double, double* %arrayidx190.3.1, align 8, !tbaa !7
  %neg.3.1 = fneg double %565
  %566 = call double @llvm.fmuladd.f64(double %neg.3.1, double %543, double %564)
  %arrayidx190.4.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 1
  %567 = load double, double* %arrayidx190.4.1, align 8, !tbaa !7
  %neg.4.1 = fneg double %567
  %568 = call double @llvm.fmuladd.f64(double %neg.4.1, double %542, double %566)
  store double %568, double* %arrayidx175.1, align 8, !tbaa !7
  %arrayidx175.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1220, i64 2
  %569 = load double, double* %arrayidx175.2, align 8, !tbaa !7
  %arrayidx190.21314 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 2
  %570 = load double, double* %arrayidx190.21314, align 8, !tbaa !7
  %neg.21315 = fneg double %570
  %571 = call double @llvm.fmuladd.f64(double %neg.21315, double %546, double %569)
  %arrayidx190.1.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 2
  %572 = load double, double* %arrayidx190.1.2, align 8, !tbaa !7
  %neg.1.2 = fneg double %572
  %573 = call double @llvm.fmuladd.f64(double %neg.1.2, double %545, double %571)
  %arrayidx190.2.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 2
  %574 = load double, double* %arrayidx190.2.2, align 8, !tbaa !7
  %neg.2.2 = fneg double %574
  %575 = call double @llvm.fmuladd.f64(double %neg.2.2, double %544, double %573)
  %arrayidx190.3.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 2
  %576 = load double, double* %arrayidx190.3.2, align 8, !tbaa !7
  %neg.3.2 = fneg double %576
  %577 = call double @llvm.fmuladd.f64(double %neg.3.2, double %543, double %575)
  %arrayidx190.4.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 2
  %578 = load double, double* %arrayidx190.4.2, align 8, !tbaa !7
  %neg.4.2 = fneg double %578
  %579 = call double @llvm.fmuladd.f64(double %neg.4.2, double %542, double %577)
  store double %579, double* %arrayidx175.2, align 8, !tbaa !7
  %arrayidx175.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1220, i64 3
  %580 = load double, double* %arrayidx175.3, align 8, !tbaa !7
  %arrayidx190.31316 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 3
  %581 = load double, double* %arrayidx190.31316, align 8, !tbaa !7
  %neg.31317 = fneg double %581
  %582 = call double @llvm.fmuladd.f64(double %neg.31317, double %546, double %580)
  %arrayidx190.1.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 3
  %583 = load double, double* %arrayidx190.1.3, align 8, !tbaa !7
  %neg.1.3 = fneg double %583
  %584 = call double @llvm.fmuladd.f64(double %neg.1.3, double %545, double %582)
  %arrayidx190.2.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 3
  %585 = load double, double* %arrayidx190.2.3, align 8, !tbaa !7
  %neg.2.3 = fneg double %585
  %586 = call double @llvm.fmuladd.f64(double %neg.2.3, double %544, double %584)
  %arrayidx190.3.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 3
  %587 = load double, double* %arrayidx190.3.3, align 8, !tbaa !7
  %neg.3.3 = fneg double %587
  %588 = call double @llvm.fmuladd.f64(double %neg.3.3, double %543, double %586)
  %arrayidx190.4.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 3
  %589 = load double, double* %arrayidx190.4.3, align 8, !tbaa !7
  %neg.4.3 = fneg double %589
  %590 = call double @llvm.fmuladd.f64(double %neg.4.3, double %542, double %588)
  store double %590, double* %arrayidx175.3, align 8, !tbaa !7
  %arrayidx175.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom27, i64 %indvars.iv1220, i64 4
  %591 = load double, double* %arrayidx175.4, align 8, !tbaa !7
  %arrayidx190.41318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 4
  %592 = load double, double* %arrayidx190.41318, align 8, !tbaa !7
  %neg.41319 = fneg double %592
  %593 = call double @llvm.fmuladd.f64(double %neg.41319, double %546, double %591)
  %arrayidx190.1.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 4
  %594 = load double, double* %arrayidx190.1.4, align 8, !tbaa !7
  %neg.1.4 = fneg double %594
  %595 = call double @llvm.fmuladd.f64(double %neg.1.4, double %545, double %593)
  %arrayidx190.2.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 4
  %596 = load double, double* %arrayidx190.2.4, align 8, !tbaa !7
  %neg.2.4 = fneg double %596
  %597 = call double @llvm.fmuladd.f64(double %neg.2.4, double %544, double %595)
  %arrayidx190.3.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 4
  %598 = load double, double* %arrayidx190.3.4, align 8, !tbaa !7
  %neg.3.4 = fneg double %598
  %599 = call double @llvm.fmuladd.f64(double %neg.3.4, double %543, double %597)
  %arrayidx190.4.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 4
  %600 = load double, double* %arrayidx190.4.4, align 8, !tbaa !7
  %neg.4.4 = fneg double %600
  %601 = call double @llvm.fmuladd.f64(double %neg.4.4, double %542, double %599)
  store double %601, double* %arrayidx175.4, align 8, !tbaa !7
  %indvars.iv.next1221 = add nsw i64 %indvars.iv1220, -1
  %cmp161 = icmp sgt i64 %indvars.iv1220, 0
  br i1 %cmp161, label %for.cond164.preheader, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.cond164.preheader
  store double %557, double* %arrayidx177, align 16, !tbaa !7
  store double %568, double* %arrayidx177.1, align 8, !tbaa !7
  store double %579, double* %arrayidx177.2, align 16, !tbaa !7
  store double %590, double* %arrayidx177.3, align 8, !tbaa !7
  store double %601, double* %arrayidx177.4, align 16, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %entry, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @y_solve1(double* nocapture readonly %g_qs, double* nocapture readonly %g_rho_i, double* nocapture readonly %g_square, double* nocapture readonly %g_u, double* %g_fjac, double* %g_njac, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !23 !kernel_arg_access_qual !24 !kernel_arg_type !25 !kernel_arg_base_type !25 !kernel_arg_type_qual !26 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv5 = trunc i64 %call4 to i32
  %sub7 = add nsw i32 %gp0, -2
  %cmp8 = icmp sle i32 %conv3, %sub7
  %cmp11.not = icmp slt i32 %conv5, %gp1
  %or.cond = and i1 %cmp8, %cmp11.not
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast double* %g_qs to [163 x [163 x double]]*
  %3 = bitcast double* %g_rho_i to [163 x [163 x double]]*
  %4 = bitcast double* %g_square to [163 x [163 x double]]*
  %5 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %mul = mul nsw i32 %sub7, %0
  %add16 = add nsw i32 %mul, %1
  %mul19 = mul i32 %add16, 4075
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds double, double* %g_fjac, i64 %idxprom
  %6 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx21 = getelementptr inbounds double, double* %g_njac, i64 %idxprom
  %7 = bitcast double* %arrayidx21 to [5 x [5 x double]]*
  %idxprom22 = sext i32 %conv to i64
  %sext = shl i64 %call4, 32
  %idxprom24 = ashr exact i64 %sext, 32
  %idxprom26 = sext i32 %conv3 to i64
  %arrayidx27 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %8 = load double, double* %arrayidx27, align 8, !tbaa !7
  %mul28 = fmul double %8, %8
  %mul29 = fmul double %8, %mul28
  %arrayidx44 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 1
  %9 = load double, double* %arrayidx44, align 8, !tbaa !7
  %arrayidx52 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 2
  %10 = load double, double* %arrayidx52, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 3
  %11 = load double, double* %arrayidx60, align 8, !tbaa !7
  %arrayidx68 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 4
  %12 = load double, double* %arrayidx68, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx77 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx77, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 0
  store double 1.000000e+00, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx85 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx85, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx89, align 8, !tbaa !7
  %13 = fneg double %9
  %fneg = fmul double %10, %13
  %mul93 = fmul double %mul28, %fneg
  %arrayidx97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 1
  store double %mul93, double* %arrayidx97, align 8, !tbaa !7
  %mul99 = fmul double %8, %10
  %arrayidx103 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 1
  store double %mul99, double* %arrayidx103, align 8, !tbaa !7
  %mul105 = fmul double %8, %9
  %arrayidx109 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 1
  store double %mul105, double* %arrayidx109, align 8, !tbaa !7
  %arrayidx113 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx113, align 8, !tbaa !7
  %arrayidx117 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx117, align 8, !tbaa !7
  %mul120 = fmul double %10, %10
  %14 = fneg double %mul120
  %fneg122 = fmul double %mul28, %14
  %arrayidx128 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %15 = load double, double* %arrayidx128, align 8, !tbaa !7
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 4.000000e-01, double %fneg122)
  %arrayidx133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 2
  store double %16, double* %arrayidx133, align 8, !tbaa !7
  %mul135 = fmul double %9, -4.000000e-01
  %mul136 = fmul double %8, %mul135
  %arrayidx140 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 2
  store double %mul136, double* %arrayidx140, align 8, !tbaa !7
  %mul142 = fmul double %10, 1.600000e+00
  %mul143 = fmul double %8, %mul142
  %arrayidx147 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 2
  store double %mul143, double* %arrayidx147, align 8, !tbaa !7
  %mul149 = fmul double %11, -4.000000e-01
  %mul150 = fmul double %8, %mul149
  %arrayidx154 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 2
  store double %mul150, double* %arrayidx154, align 8, !tbaa !7
  %arrayidx158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 2
  store double 4.000000e-01, double* %arrayidx158, align 8, !tbaa !7
  %mul161 = fmul double %10, %11
  %fneg162 = fneg double %mul161
  %mul163 = fmul double %mul28, %fneg162
  %arrayidx167 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 3
  store double %mul163, double* %arrayidx167, align 8, !tbaa !7
  %arrayidx171 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx171, align 8, !tbaa !7
  %mul173 = fmul double %8, %11
  %arrayidx177 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 3
  store double %mul173, double* %arrayidx177, align 8, !tbaa !7
  %arrayidx183 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 3
  store double %mul99, double* %arrayidx183, align 8, !tbaa !7
  %arrayidx187 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx187, align 8, !tbaa !7
  %arrayidx193 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %17 = load double, double* %arrayidx193, align 8, !tbaa !7
  %mul196 = fmul double %12, 1.400000e+00
  %neg = fneg double %mul196
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 8.000000e-01, double %neg)
  %mul198 = fmul double %10, %18
  %mul199 = fmul double %mul28, %mul198
  %arrayidx203 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 4
  store double %mul199, double* %arrayidx203, align 8, !tbaa !7
  %mul207 = fmul double %mul135, %10
  %mul208 = fmul double %mul28, %mul207
  %arrayidx212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 4
  store double %mul208, double* %arrayidx212, align 8, !tbaa !7
  %19 = load double, double* %arrayidx128, align 8, !tbaa !7
  %20 = tail call double @llvm.fmuladd.f64(double %mul120, double %mul28, double %19)
  %neg227 = fmul double %20, -4.000000e-01
  %21 = tail call double @llvm.fmuladd.f64(double %mul196, double %8, double %neg227)
  %arrayidx231 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 4
  store double %21, double* %arrayidx231, align 8, !tbaa !7
  %mul235 = fmul double %mul161, -4.000000e-01
  %mul236 = fmul double %mul28, %mul235
  %arrayidx240 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 4
  store double %mul236, double* %arrayidx240, align 8, !tbaa !7
  %mul242 = fmul double %10, 1.400000e+00
  %mul243 = fmul double %8, %mul242
  %arrayidx247 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 4
  store double %mul243, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx251 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx251, align 8, !tbaa !7
  %arrayidx255 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx255, align 8, !tbaa !7
  %arrayidx259 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx259, align 8, !tbaa !7
  %arrayidx263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx263, align 8, !tbaa !7
  %arrayidx267 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx267, align 8, !tbaa !7
  %mul268 = fmul double %mul28, -1.000000e-01
  %mul270 = fmul double %9, %mul268
  %arrayidx274 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 1
  store double %mul270, double* %arrayidx274, align 8, !tbaa !7
  %mul275 = fmul double %8, 1.000000e-01
  %arrayidx279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 1
  store double %mul275, double* %arrayidx279, align 8, !tbaa !7
  %arrayidx283 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx287 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx287, align 8, !tbaa !7
  %arrayidx291 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx291, align 8, !tbaa !7
  %mul292 = fmul double %mul28, 0xBFC1111111111111
  %mul294 = fmul double %mul292, %10
  %arrayidx298 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 2
  store double %mul294, double* %arrayidx298, align 8, !tbaa !7
  %arrayidx302 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx302, align 8, !tbaa !7
  %mul303 = fmul double %8, 0x3FC1111111111111
  %arrayidx307 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 2
  store double %mul303, double* %arrayidx307, align 8, !tbaa !7
  %arrayidx311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx311, align 8, !tbaa !7
  %arrayidx315 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx315, align 8, !tbaa !7
  %mul318 = fmul double %mul268, %11
  %arrayidx322 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 3
  store double %mul318, double* %arrayidx322, align 8, !tbaa !7
  %arrayidx326 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx326, align 8, !tbaa !7
  %arrayidx330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx330, align 8, !tbaa !7
  %arrayidx335 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 3
  store double %mul275, double* %arrayidx335, align 8, !tbaa !7
  %arrayidx339 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx339, align 8, !tbaa !7
  %mul340 = fmul double %mul29, 0x3FB89374BC6A7EF8
  %mul343 = fmul double %9, %9
  %22 = fmul double %mul29, 0x3FB00AEC33E1F670
  %neg350 = fmul double %22, %mul120
  %23 = tail call double @llvm.fmuladd.f64(double %mul340, double %mul343, double %neg350)
  %mul354 = fmul double %11, %11
  %24 = tail call double @llvm.fmuladd.f64(double %mul340, double %mul354, double %23)
  %neg360 = fmul double %mul28, 0xBFC916872B020C49
  %25 = tail call double @llvm.fmuladd.f64(double %neg360, double %12, double %24)
  %arrayidx364 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 4
  store double %25, double* %arrayidx364, align 8, !tbaa !7
  %mul365 = fmul double %mul28, 0xBFB89374BC6A7EF8
  %mul367 = fmul double %9, %mul365
  %arrayidx371 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 4
  store double %mul367, double* %arrayidx371, align 8, !tbaa !7
  %mul372 = fmul double %mul28, 0xBFB00AEC33E1F670
  %mul374 = fmul double %mul372, %10
  %arrayidx378 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 4
  store double %mul374, double* %arrayidx378, align 8, !tbaa !7
  %mul381 = fmul double %mul365, %11
  %arrayidx385 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 4
  store double %mul381, double* %arrayidx385, align 8, !tbaa !7
  %mul386 = fmul double %8, 0x3FC916872B020C49
  %arrayidx390 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 4
  store double %mul386, double* %arrayidx390, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable writeonly
define dso_local spir_kernel void @y_solve2(double* nocapture %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #5 !kernel_arg_addr_space !19 !kernel_arg_access_qual !20 !kernel_arg_type !21 !kernel_arg_base_type !21 !kernel_arg_type_qual !22 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub5 = add nsw i32 %gp0, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call8 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %conv9 = trunc i64 %call8 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  %sub13 = add nsw i32 %gp1, -1
  %spec.select = select i1 %cmp10, i32 %sub13, i32 %conv9
  %mul = mul nsw i32 %sub5, %0
  %add18 = add nsw i32 %mul, %1
  %mul22 = mul i32 %add18, 12225
  %idxprom = sext i32 %mul22 to i64
  %arrayidx = getelementptr inbounds double, double* %g_lhs, i64 %idxprom
  %2 = bitcast double* %arrayidx to [3 x [5 x [5 x double]]]*
  %idxprom29 = sext i32 %spec.select to i64
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %if.end, %for.cond25.preheader
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.cond25.preheader ]
  %arrayidx35 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx42 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !7
  %arrayidx49 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx49, align 8, !tbaa !7
  %arrayidx35.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx35.1, align 8, !tbaa !7
  %arrayidx42.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx42.1, align 8, !tbaa !7
  %arrayidx49.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx49.1, align 8, !tbaa !7
  %arrayidx35.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx35.2, align 8, !tbaa !7
  %arrayidx42.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx42.2, align 8, !tbaa !7
  %arrayidx49.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx49.2, align 8, !tbaa !7
  %arrayidx35.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx35.3, align 8, !tbaa !7
  %arrayidx42.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx42.3, align 8, !tbaa !7
  %arrayidx49.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx49.3, align 8, !tbaa !7
  %arrayidx35.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx35.4, align 8, !tbaa !7
  %arrayidx42.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx42.4, align 8, !tbaa !7
  %arrayidx49.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx49.4, align 8, !tbaa !7
  %arrayidx56 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx56, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %cleanup, label %for.cond25.preheader

cleanup:                                          ; preds = %for.cond25.preheader, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @y_solve3(double* readonly %g_fjac, double* readonly %g_njac, double* %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !27 !kernel_arg_access_qual !28 !kernel_arg_type !29 !kernel_arg_base_type !29 !kernel_arg_type_qual !30 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub8 = add nsw i32 %gp0, -2
  %cmp9 = icmp sgt i32 %conv3, %sub8
  %sub12 = add nsw i32 %gp1, -2
  %cmp13 = icmp sgt i32 %conv6, %sub12
  %or.cond = or i1 %cmp9, %cmp13
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mul = mul nsw i32 %sub8, %0
  %add18 = add nsw i32 %mul, %1
  %mul21 = mul i32 %add18, 4075
  %idxprom = sext i32 %mul21 to i64
  %arrayidx = getelementptr inbounds double, double* %g_fjac, i64 %idxprom
  %3 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx23 = getelementptr inbounds double, double* %g_njac, i64 %idxprom
  %4 = bitcast double* %arrayidx23 to [5 x [5 x double]]*
  %mul27 = mul i32 %add18, 12225
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds double, double* %g_lhs, i64 %idxprom28
  %5 = bitcast double* %arrayidx29 to [3 x [5 x [5 x double]]]*
  %sext = shl i64 %call4, 32
  %idxprom31 = ashr exact i64 %sext, 32
  %arrayidx34 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 0
  %6 = load double, double* %arrayidx34, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 0
  %7 = load double, double* %arrayidx40, align 8, !tbaa !7
  %neg = fmul double %7, 0xC004BC9EECBFB15C
  %8 = tail call double @llvm.fmuladd.f64(double %6, double 0xBF807C84B5DCC63F, double %neg)
  %9 = fadd double %8, 0xBFFF1AEE631F8A0A
  %idxprom44 = sext i32 %conv6 to i64
  %arrayidx48 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 0
  store double %9, double* %arrayidx48, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 0
  %10 = load double, double* %arrayidx54, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 0
  %11 = load double, double* %arrayidx60, align 8, !tbaa !7
  %neg62 = fmul double %11, 0xC004BC9EECBFB15C
  %12 = tail call double @llvm.fmuladd.f64(double %10, double 0xBF807C84B5DCC63F, double %neg62)
  %arrayidx67 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 0
  store double %12, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 0
  %13 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 0
  %14 = load double, double* %arrayidx79, align 8, !tbaa !7
  %neg81 = fmul double %14, 0xC004BC9EECBFB15C
  %15 = tail call double @llvm.fmuladd.f64(double %13, double 0xBF807C84B5DCC63F, double %neg81)
  %arrayidx86 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 0
  store double %15, double* %arrayidx86, align 8, !tbaa !7
  %arrayidx92 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 0
  %16 = load double, double* %arrayidx92, align 8, !tbaa !7
  %arrayidx98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 0
  %17 = load double, double* %arrayidx98, align 8, !tbaa !7
  %neg100 = fmul double %17, 0xC004BC9EECBFB15C
  %18 = tail call double @llvm.fmuladd.f64(double %16, double 0xBF807C84B5DCC63F, double %neg100)
  %arrayidx105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 0
  store double %18, double* %arrayidx105, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 0
  %19 = load double, double* %arrayidx111, align 8, !tbaa !7
  %arrayidx117 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 0
  %20 = load double, double* %arrayidx117, align 8, !tbaa !7
  %neg119 = fmul double %20, 0xC004BC9EECBFB15C
  %21 = tail call double @llvm.fmuladd.f64(double %19, double 0xBF807C84B5DCC63F, double %neg119)
  %arrayidx124 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 0
  store double %21, double* %arrayidx124, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 1
  %22 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 1
  %23 = load double, double* %arrayidx136, align 8, !tbaa !7
  %neg138 = fmul double %23, 0xC004BC9EECBFB15C
  %24 = tail call double @llvm.fmuladd.f64(double %22, double 0xBF807C84B5DCC63F, double %neg138)
  %arrayidx143 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 1
  store double %24, double* %arrayidx143, align 8, !tbaa !7
  %arrayidx149 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 1
  %25 = load double, double* %arrayidx149, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 1
  %26 = load double, double* %arrayidx155, align 8, !tbaa !7
  %neg157 = fmul double %26, 0xC004BC9EECBFB15C
  %27 = tail call double @llvm.fmuladd.f64(double %25, double 0xBF807C84B5DCC63F, double %neg157)
  %28 = fadd double %27, 0xBFFF1AEE631F8A0A
  %arrayidx164 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 1
  store double %28, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 1
  %29 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 1
  %30 = load double, double* %arrayidx176, align 8, !tbaa !7
  %neg178 = fmul double %30, 0xC004BC9EECBFB15C
  %31 = tail call double @llvm.fmuladd.f64(double %29, double 0xBF807C84B5DCC63F, double %neg178)
  %arrayidx183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 1
  store double %31, double* %arrayidx183, align 8, !tbaa !7
  %arrayidx189 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 1
  %32 = load double, double* %arrayidx189, align 8, !tbaa !7
  %arrayidx195 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 1
  %33 = load double, double* %arrayidx195, align 8, !tbaa !7
  %neg197 = fmul double %33, 0xC004BC9EECBFB15C
  %34 = tail call double @llvm.fmuladd.f64(double %32, double 0xBF807C84B5DCC63F, double %neg197)
  %arrayidx202 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 1
  store double %34, double* %arrayidx202, align 8, !tbaa !7
  %arrayidx208 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 1
  %35 = load double, double* %arrayidx208, align 8, !tbaa !7
  %arrayidx214 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 1
  %36 = load double, double* %arrayidx214, align 8, !tbaa !7
  %neg216 = fmul double %36, 0xC004BC9EECBFB15C
  %37 = tail call double @llvm.fmuladd.f64(double %35, double 0xBF807C84B5DCC63F, double %neg216)
  %arrayidx221 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 1
  store double %37, double* %arrayidx221, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 2
  %38 = load double, double* %arrayidx227, align 8, !tbaa !7
  %arrayidx233 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 2
  %39 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg235 = fmul double %39, 0xC004BC9EECBFB15C
  %40 = tail call double @llvm.fmuladd.f64(double %38, double 0xBF807C84B5DCC63F, double %neg235)
  %arrayidx240 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 2
  store double %40, double* %arrayidx240, align 8, !tbaa !7
  %arrayidx246 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 2
  %41 = load double, double* %arrayidx246, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 2
  %42 = load double, double* %arrayidx252, align 8, !tbaa !7
  %neg254 = fmul double %42, 0xC004BC9EECBFB15C
  %43 = tail call double @llvm.fmuladd.f64(double %41, double 0xBF807C84B5DCC63F, double %neg254)
  %arrayidx259 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 2
  store double %43, double* %arrayidx259, align 8, !tbaa !7
  %arrayidx265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 2
  %44 = load double, double* %arrayidx265, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 2
  %45 = load double, double* %arrayidx271, align 8, !tbaa !7
  %neg273 = fmul double %45, 0xC004BC9EECBFB15C
  %46 = tail call double @llvm.fmuladd.f64(double %44, double 0xBF807C84B5DCC63F, double %neg273)
  %47 = fadd double %46, 0xBFFF1AEE631F8A0A
  %arrayidx280 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 2
  store double %47, double* %arrayidx280, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 2
  %48 = load double, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 2
  %49 = load double, double* %arrayidx292, align 8, !tbaa !7
  %neg294 = fmul double %49, 0xC004BC9EECBFB15C
  %50 = tail call double @llvm.fmuladd.f64(double %48, double 0xBF807C84B5DCC63F, double %neg294)
  %arrayidx299 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 2
  store double %50, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx305 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 2
  %51 = load double, double* %arrayidx305, align 8, !tbaa !7
  %arrayidx311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 2
  %52 = load double, double* %arrayidx311, align 8, !tbaa !7
  %neg313 = fmul double %52, 0xC004BC9EECBFB15C
  %53 = tail call double @llvm.fmuladd.f64(double %51, double 0xBF807C84B5DCC63F, double %neg313)
  %arrayidx318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 2
  store double %53, double* %arrayidx318, align 8, !tbaa !7
  %arrayidx324 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 3
  %54 = load double, double* %arrayidx324, align 8, !tbaa !7
  %arrayidx330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 3
  %55 = load double, double* %arrayidx330, align 8, !tbaa !7
  %neg332 = fmul double %55, 0xC004BC9EECBFB15C
  %56 = tail call double @llvm.fmuladd.f64(double %54, double 0xBF807C84B5DCC63F, double %neg332)
  %arrayidx337 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 3
  store double %56, double* %arrayidx337, align 8, !tbaa !7
  %arrayidx343 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 3
  %57 = load double, double* %arrayidx343, align 8, !tbaa !7
  %arrayidx349 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 3
  %58 = load double, double* %arrayidx349, align 8, !tbaa !7
  %neg351 = fmul double %58, 0xC004BC9EECBFB15C
  %59 = tail call double @llvm.fmuladd.f64(double %57, double 0xBF807C84B5DCC63F, double %neg351)
  %arrayidx356 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 3
  store double %59, double* %arrayidx356, align 8, !tbaa !7
  %arrayidx362 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 3
  %60 = load double, double* %arrayidx362, align 8, !tbaa !7
  %arrayidx368 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 3
  %61 = load double, double* %arrayidx368, align 8, !tbaa !7
  %neg370 = fmul double %61, 0xC004BC9EECBFB15C
  %62 = tail call double @llvm.fmuladd.f64(double %60, double 0xBF807C84B5DCC63F, double %neg370)
  %arrayidx375 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 3
  store double %62, double* %arrayidx375, align 8, !tbaa !7
  %arrayidx381 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 3
  %63 = load double, double* %arrayidx381, align 8, !tbaa !7
  %arrayidx387 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 3
  %64 = load double, double* %arrayidx387, align 8, !tbaa !7
  %neg389 = fmul double %64, 0xC004BC9EECBFB15C
  %65 = tail call double @llvm.fmuladd.f64(double %63, double 0xBF807C84B5DCC63F, double %neg389)
  %66 = fadd double %65, 0xBFFF1AEE631F8A0A
  %arrayidx396 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 3
  store double %66, double* %arrayidx396, align 8, !tbaa !7
  %arrayidx402 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 3
  %67 = load double, double* %arrayidx402, align 8, !tbaa !7
  %arrayidx408 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 3
  %68 = load double, double* %arrayidx408, align 8, !tbaa !7
  %neg410 = fmul double %68, 0xC004BC9EECBFB15C
  %69 = tail call double @llvm.fmuladd.f64(double %67, double 0xBF807C84B5DCC63F, double %neg410)
  %arrayidx415 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 3
  store double %69, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 4
  %70 = load double, double* %arrayidx421, align 8, !tbaa !7
  %arrayidx427 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 4
  %71 = load double, double* %arrayidx427, align 8, !tbaa !7
  %neg429 = fmul double %71, 0xC004BC9EECBFB15C
  %72 = tail call double @llvm.fmuladd.f64(double %70, double 0xBF807C84B5DCC63F, double %neg429)
  %arrayidx434 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 4
  store double %72, double* %arrayidx434, align 8, !tbaa !7
  %arrayidx440 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 4
  %73 = load double, double* %arrayidx440, align 8, !tbaa !7
  %arrayidx446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 4
  %74 = load double, double* %arrayidx446, align 8, !tbaa !7
  %neg448 = fmul double %74, 0xC004BC9EECBFB15C
  %75 = tail call double @llvm.fmuladd.f64(double %73, double 0xBF807C84B5DCC63F, double %neg448)
  %arrayidx453 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 4
  store double %75, double* %arrayidx453, align 8, !tbaa !7
  %arrayidx459 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 4
  %76 = load double, double* %arrayidx459, align 8, !tbaa !7
  %arrayidx465 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 4
  %77 = load double, double* %arrayidx465, align 8, !tbaa !7
  %neg467 = fmul double %77, 0xC004BC9EECBFB15C
  %78 = tail call double @llvm.fmuladd.f64(double %76, double 0xBF807C84B5DCC63F, double %neg467)
  %arrayidx472 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 4
  store double %78, double* %arrayidx472, align 8, !tbaa !7
  %arrayidx478 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 4
  %79 = load double, double* %arrayidx478, align 8, !tbaa !7
  %arrayidx484 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 4
  %80 = load double, double* %arrayidx484, align 8, !tbaa !7
  %neg486 = fmul double %80, 0xC004BC9EECBFB15C
  %81 = tail call double @llvm.fmuladd.f64(double %79, double 0xBF807C84B5DCC63F, double %neg486)
  %arrayidx491 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 4
  store double %81, double* %arrayidx491, align 8, !tbaa !7
  %arrayidx497 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 4
  %82 = load double, double* %arrayidx497, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 4
  %83 = load double, double* %arrayidx503, align 8, !tbaa !7
  %neg505 = fmul double %83, 0xC004BC9EECBFB15C
  %84 = tail call double @llvm.fmuladd.f64(double %82, double 0xBF807C84B5DCC63F, double %neg505)
  %85 = fadd double %84, 0xBFFF1AEE631F8A0A
  %arrayidx512 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 4
  store double %85, double* %arrayidx512, align 8, !tbaa !7
  %arrayidx517 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 0
  %86 = load double, double* %arrayidx517, align 8, !tbaa !7
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %88 = fadd double %87, 0x400F1AEE631F8A0A
  %arrayidx525 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 0
  store double %88, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx530 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 0
  %89 = load double, double* %arrayidx530, align 8, !tbaa !7
  %mul531 = fmul double %89, 0x4014BC9EECBFB15C
  %arrayidx536 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 0
  store double %mul531, double* %arrayidx536, align 8, !tbaa !7
  %arrayidx541 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 0
  %90 = load double, double* %arrayidx541, align 8, !tbaa !7
  %mul542 = fmul double %90, 0x4014BC9EECBFB15C
  %arrayidx547 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 0
  store double %mul542, double* %arrayidx547, align 8, !tbaa !7
  %arrayidx552 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 0
  %91 = load double, double* %arrayidx552, align 8, !tbaa !7
  %mul553 = fmul double %91, 0x4014BC9EECBFB15C
  %arrayidx558 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 0
  store double %mul553, double* %arrayidx558, align 8, !tbaa !7
  %arrayidx563 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 0
  %92 = load double, double* %arrayidx563, align 8, !tbaa !7
  %mul564 = fmul double %92, 0x4014BC9EECBFB15C
  %arrayidx569 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 0
  store double %mul564, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx574 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 1
  %93 = load double, double* %arrayidx574, align 8, !tbaa !7
  %mul575 = fmul double %93, 0x4014BC9EECBFB15C
  %arrayidx580 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 1
  store double %mul575, double* %arrayidx580, align 8, !tbaa !7
  %arrayidx585 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 1
  %94 = load double, double* %arrayidx585, align 8, !tbaa !7
  %95 = tail call double @llvm.fmuladd.f64(double %94, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %96 = fadd double %95, 0x400F1AEE631F8A0A
  %arrayidx593 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 1
  store double %96, double* %arrayidx593, align 8, !tbaa !7
  %arrayidx598 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 1
  %97 = load double, double* %arrayidx598, align 8, !tbaa !7
  %mul599 = fmul double %97, 0x4014BC9EECBFB15C
  %arrayidx604 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 1
  store double %mul599, double* %arrayidx604, align 8, !tbaa !7
  %arrayidx609 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 1
  %98 = load double, double* %arrayidx609, align 8, !tbaa !7
  %mul610 = fmul double %98, 0x4014BC9EECBFB15C
  %arrayidx615 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 1
  store double %mul610, double* %arrayidx615, align 8, !tbaa !7
  %arrayidx620 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 1
  %99 = load double, double* %arrayidx620, align 8, !tbaa !7
  %mul621 = fmul double %99, 0x4014BC9EECBFB15C
  %arrayidx626 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 1
  store double %mul621, double* %arrayidx626, align 8, !tbaa !7
  %arrayidx631 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 2
  %100 = load double, double* %arrayidx631, align 8, !tbaa !7
  %mul632 = fmul double %100, 0x4014BC9EECBFB15C
  %arrayidx637 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 2
  store double %mul632, double* %arrayidx637, align 8, !tbaa !7
  %arrayidx642 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 2
  %101 = load double, double* %arrayidx642, align 8, !tbaa !7
  %mul643 = fmul double %101, 0x4014BC9EECBFB15C
  %arrayidx648 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 2
  store double %mul643, double* %arrayidx648, align 8, !tbaa !7
  %arrayidx653 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 2
  %102 = load double, double* %arrayidx653, align 8, !tbaa !7
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %104 = fadd double %103, 0x400F1AEE631F8A0A
  %arrayidx661 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 2
  store double %104, double* %arrayidx661, align 8, !tbaa !7
  %arrayidx666 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 2
  %105 = load double, double* %arrayidx666, align 8, !tbaa !7
  %mul667 = fmul double %105, 0x4014BC9EECBFB15C
  %arrayidx672 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 2
  store double %mul667, double* %arrayidx672, align 8, !tbaa !7
  %arrayidx677 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 2
  %106 = load double, double* %arrayidx677, align 8, !tbaa !7
  %mul678 = fmul double %106, 0x4014BC9EECBFB15C
  %arrayidx683 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 2
  store double %mul678, double* %arrayidx683, align 8, !tbaa !7
  %arrayidx688 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 3
  %107 = load double, double* %arrayidx688, align 8, !tbaa !7
  %mul689 = fmul double %107, 0x4014BC9EECBFB15C
  %arrayidx694 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 3
  store double %mul689, double* %arrayidx694, align 8, !tbaa !7
  %arrayidx699 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 3
  %108 = load double, double* %arrayidx699, align 8, !tbaa !7
  %mul700 = fmul double %108, 0x4014BC9EECBFB15C
  %arrayidx705 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 3
  store double %mul700, double* %arrayidx705, align 8, !tbaa !7
  %arrayidx710 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 3
  %109 = load double, double* %arrayidx710, align 8, !tbaa !7
  %mul711 = fmul double %109, 0x4014BC9EECBFB15C
  %arrayidx716 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 3
  store double %mul711, double* %arrayidx716, align 8, !tbaa !7
  %arrayidx721 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 3
  %110 = load double, double* %arrayidx721, align 8, !tbaa !7
  %111 = tail call double @llvm.fmuladd.f64(double %110, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %112 = fadd double %111, 0x400F1AEE631F8A0A
  %arrayidx729 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 3
  store double %112, double* %arrayidx729, align 8, !tbaa !7
  %arrayidx734 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 3
  %113 = load double, double* %arrayidx734, align 8, !tbaa !7
  %mul735 = fmul double %113, 0x4014BC9EECBFB15C
  %arrayidx740 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 3
  store double %mul735, double* %arrayidx740, align 8, !tbaa !7
  %arrayidx745 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 4
  %114 = load double, double* %arrayidx745, align 8, !tbaa !7
  %mul746 = fmul double %114, 0x4014BC9EECBFB15C
  %arrayidx751 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 4
  store double %mul746, double* %arrayidx751, align 8, !tbaa !7
  %arrayidx756 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 4
  %115 = load double, double* %arrayidx756, align 8, !tbaa !7
  %mul757 = fmul double %115, 0x4014BC9EECBFB15C
  %arrayidx762 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 4
  store double %mul757, double* %arrayidx762, align 8, !tbaa !7
  %arrayidx767 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 4
  %116 = load double, double* %arrayidx767, align 8, !tbaa !7
  %mul768 = fmul double %116, 0x4014BC9EECBFB15C
  %arrayidx773 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 4
  store double %mul768, double* %arrayidx773, align 8, !tbaa !7
  %arrayidx778 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 4
  %117 = load double, double* %arrayidx778, align 8, !tbaa !7
  %mul779 = fmul double %117, 0x4014BC9EECBFB15C
  %arrayidx784 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 4
  store double %mul779, double* %arrayidx784, align 8, !tbaa !7
  %arrayidx789 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 4
  %118 = load double, double* %arrayidx789, align 8, !tbaa !7
  %119 = tail call double @llvm.fmuladd.f64(double %118, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %120 = fadd double %119, 0x400F1AEE631F8A0A
  %arrayidx797 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 4
  store double %120, double* %arrayidx797, align 8, !tbaa !7
  %sext1813 = add i64 %sext, 8589934592
  %idxprom799 = ashr exact i64 %sext1813, 32
  %arrayidx802 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 0
  %121 = load double, double* %arrayidx802, align 8, !tbaa !7
  %arrayidx808 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 0
  %122 = load double, double* %arrayidx808, align 8, !tbaa !7
  %neg810 = fmul double %122, 0xC004BC9EECBFB15C
  %123 = tail call double @llvm.fmuladd.f64(double %121, double 0x3F807C84B5DCC63F, double %neg810)
  %124 = fadd double %123, 0xBFFF1AEE631F8A0A
  %arrayidx817 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 0
  store double %124, double* %arrayidx817, align 8, !tbaa !7
  %arrayidx822 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 0
  %125 = load double, double* %arrayidx822, align 8, !tbaa !7
  %arrayidx828 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 0
  %126 = load double, double* %arrayidx828, align 8, !tbaa !7
  %neg830 = fmul double %126, 0xC004BC9EECBFB15C
  %127 = tail call double @llvm.fmuladd.f64(double %125, double 0x3F807C84B5DCC63F, double %neg830)
  %arrayidx835 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 0
  store double %127, double* %arrayidx835, align 8, !tbaa !7
  %arrayidx840 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 0
  %128 = load double, double* %arrayidx840, align 8, !tbaa !7
  %arrayidx846 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 0
  %129 = load double, double* %arrayidx846, align 8, !tbaa !7
  %neg848 = fmul double %129, 0xC004BC9EECBFB15C
  %130 = tail call double @llvm.fmuladd.f64(double %128, double 0x3F807C84B5DCC63F, double %neg848)
  %arrayidx853 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 0
  store double %130, double* %arrayidx853, align 8, !tbaa !7
  %arrayidx858 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 0
  %131 = load double, double* %arrayidx858, align 8, !tbaa !7
  %arrayidx864 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 0
  %132 = load double, double* %arrayidx864, align 8, !tbaa !7
  %neg866 = fmul double %132, 0xC004BC9EECBFB15C
  %133 = tail call double @llvm.fmuladd.f64(double %131, double 0x3F807C84B5DCC63F, double %neg866)
  %arrayidx871 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 0
  store double %133, double* %arrayidx871, align 8, !tbaa !7
  %arrayidx876 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 0
  %134 = load double, double* %arrayidx876, align 8, !tbaa !7
  %arrayidx882 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 0
  %135 = load double, double* %arrayidx882, align 8, !tbaa !7
  %neg884 = fmul double %135, 0xC004BC9EECBFB15C
  %136 = tail call double @llvm.fmuladd.f64(double %134, double 0x3F807C84B5DCC63F, double %neg884)
  %arrayidx889 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 0
  store double %136, double* %arrayidx889, align 8, !tbaa !7
  %arrayidx894 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 1
  %137 = load double, double* %arrayidx894, align 8, !tbaa !7
  %arrayidx900 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 1
  %138 = load double, double* %arrayidx900, align 8, !tbaa !7
  %neg902 = fmul double %138, 0xC004BC9EECBFB15C
  %139 = tail call double @llvm.fmuladd.f64(double %137, double 0x3F807C84B5DCC63F, double %neg902)
  %arrayidx907 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 1
  store double %139, double* %arrayidx907, align 8, !tbaa !7
  %arrayidx912 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 1
  %140 = load double, double* %arrayidx912, align 8, !tbaa !7
  %arrayidx918 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 1
  %141 = load double, double* %arrayidx918, align 8, !tbaa !7
  %neg920 = fmul double %141, 0xC004BC9EECBFB15C
  %142 = tail call double @llvm.fmuladd.f64(double %140, double 0x3F807C84B5DCC63F, double %neg920)
  %143 = fadd double %142, 0xBFFF1AEE631F8A0A
  %arrayidx927 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 1
  store double %143, double* %arrayidx927, align 8, !tbaa !7
  %arrayidx932 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 1
  %144 = load double, double* %arrayidx932, align 8, !tbaa !7
  %arrayidx938 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 1
  %145 = load double, double* %arrayidx938, align 8, !tbaa !7
  %neg940 = fmul double %145, 0xC004BC9EECBFB15C
  %146 = tail call double @llvm.fmuladd.f64(double %144, double 0x3F807C84B5DCC63F, double %neg940)
  %arrayidx945 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 1
  store double %146, double* %arrayidx945, align 8, !tbaa !7
  %arrayidx950 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 1
  %147 = load double, double* %arrayidx950, align 8, !tbaa !7
  %arrayidx956 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 1
  %148 = load double, double* %arrayidx956, align 8, !tbaa !7
  %neg958 = fmul double %148, 0xC004BC9EECBFB15C
  %149 = tail call double @llvm.fmuladd.f64(double %147, double 0x3F807C84B5DCC63F, double %neg958)
  %arrayidx963 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 1
  store double %149, double* %arrayidx963, align 8, !tbaa !7
  %arrayidx968 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 1
  %150 = load double, double* %arrayidx968, align 8, !tbaa !7
  %arrayidx974 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 1
  %151 = load double, double* %arrayidx974, align 8, !tbaa !7
  %neg976 = fmul double %151, 0xC004BC9EECBFB15C
  %152 = tail call double @llvm.fmuladd.f64(double %150, double 0x3F807C84B5DCC63F, double %neg976)
  %arrayidx981 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 1
  store double %152, double* %arrayidx981, align 8, !tbaa !7
  %arrayidx986 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 2
  %153 = load double, double* %arrayidx986, align 8, !tbaa !7
  %arrayidx992 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 2
  %154 = load double, double* %arrayidx992, align 8, !tbaa !7
  %neg994 = fmul double %154, 0xC004BC9EECBFB15C
  %155 = tail call double @llvm.fmuladd.f64(double %153, double 0x3F807C84B5DCC63F, double %neg994)
  %arrayidx999 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 2
  store double %155, double* %arrayidx999, align 8, !tbaa !7
  %arrayidx1004 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 2
  %156 = load double, double* %arrayidx1004, align 8, !tbaa !7
  %arrayidx1010 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 2
  %157 = load double, double* %arrayidx1010, align 8, !tbaa !7
  %neg1012 = fmul double %157, 0xC004BC9EECBFB15C
  %158 = tail call double @llvm.fmuladd.f64(double %156, double 0x3F807C84B5DCC63F, double %neg1012)
  %arrayidx1017 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 2
  store double %158, double* %arrayidx1017, align 8, !tbaa !7
  %arrayidx1022 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 2
  %159 = load double, double* %arrayidx1022, align 8, !tbaa !7
  %arrayidx1028 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 2
  %160 = load double, double* %arrayidx1028, align 8, !tbaa !7
  %neg1030 = fmul double %160, 0xC004BC9EECBFB15C
  %161 = tail call double @llvm.fmuladd.f64(double %159, double 0x3F807C84B5DCC63F, double %neg1030)
  %162 = fadd double %161, 0xBFFF1AEE631F8A0A
  %arrayidx1037 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 2
  store double %162, double* %arrayidx1037, align 8, !tbaa !7
  %arrayidx1042 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 2
  %163 = load double, double* %arrayidx1042, align 8, !tbaa !7
  %arrayidx1048 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 2
  %164 = load double, double* %arrayidx1048, align 8, !tbaa !7
  %neg1050 = fmul double %164, 0xC004BC9EECBFB15C
  %165 = tail call double @llvm.fmuladd.f64(double %163, double 0x3F807C84B5DCC63F, double %neg1050)
  %arrayidx1055 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 2
  store double %165, double* %arrayidx1055, align 8, !tbaa !7
  %arrayidx1060 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 2
  %166 = load double, double* %arrayidx1060, align 8, !tbaa !7
  %arrayidx1066 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 2
  %167 = load double, double* %arrayidx1066, align 8, !tbaa !7
  %neg1068 = fmul double %167, 0xC004BC9EECBFB15C
  %168 = tail call double @llvm.fmuladd.f64(double %166, double 0x3F807C84B5DCC63F, double %neg1068)
  %arrayidx1073 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 2
  store double %168, double* %arrayidx1073, align 8, !tbaa !7
  %arrayidx1078 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 3
  %169 = load double, double* %arrayidx1078, align 8, !tbaa !7
  %arrayidx1084 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 3
  %170 = load double, double* %arrayidx1084, align 8, !tbaa !7
  %neg1086 = fmul double %170, 0xC004BC9EECBFB15C
  %171 = tail call double @llvm.fmuladd.f64(double %169, double 0x3F807C84B5DCC63F, double %neg1086)
  %arrayidx1091 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 3
  store double %171, double* %arrayidx1091, align 8, !tbaa !7
  %arrayidx1096 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 3
  %172 = load double, double* %arrayidx1096, align 8, !tbaa !7
  %arrayidx1102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 3
  %173 = load double, double* %arrayidx1102, align 8, !tbaa !7
  %neg1104 = fmul double %173, 0xC004BC9EECBFB15C
  %174 = tail call double @llvm.fmuladd.f64(double %172, double 0x3F807C84B5DCC63F, double %neg1104)
  %arrayidx1109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 3
  store double %174, double* %arrayidx1109, align 8, !tbaa !7
  %arrayidx1114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 3
  %175 = load double, double* %arrayidx1114, align 8, !tbaa !7
  %arrayidx1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 3
  %176 = load double, double* %arrayidx1120, align 8, !tbaa !7
  %neg1122 = fmul double %176, 0xC004BC9EECBFB15C
  %177 = tail call double @llvm.fmuladd.f64(double %175, double 0x3F807C84B5DCC63F, double %neg1122)
  %arrayidx1127 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 3
  store double %177, double* %arrayidx1127, align 8, !tbaa !7
  %arrayidx1132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 3
  %178 = load double, double* %arrayidx1132, align 8, !tbaa !7
  %arrayidx1138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 3
  %179 = load double, double* %arrayidx1138, align 8, !tbaa !7
  %neg1140 = fmul double %179, 0xC004BC9EECBFB15C
  %180 = tail call double @llvm.fmuladd.f64(double %178, double 0x3F807C84B5DCC63F, double %neg1140)
  %181 = fadd double %180, 0xBFFF1AEE631F8A0A
  %arrayidx1147 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 3
  store double %181, double* %arrayidx1147, align 8, !tbaa !7
  %arrayidx1152 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 3
  %182 = load double, double* %arrayidx1152, align 8, !tbaa !7
  %arrayidx1158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 3
  %183 = load double, double* %arrayidx1158, align 8, !tbaa !7
  %neg1160 = fmul double %183, 0xC004BC9EECBFB15C
  %184 = tail call double @llvm.fmuladd.f64(double %182, double 0x3F807C84B5DCC63F, double %neg1160)
  %arrayidx1165 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 3
  store double %184, double* %arrayidx1165, align 8, !tbaa !7
  %arrayidx1170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 4
  %185 = load double, double* %arrayidx1170, align 8, !tbaa !7
  %arrayidx1176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 4
  %186 = load double, double* %arrayidx1176, align 8, !tbaa !7
  %neg1178 = fmul double %186, 0xC004BC9EECBFB15C
  %187 = tail call double @llvm.fmuladd.f64(double %185, double 0x3F807C84B5DCC63F, double %neg1178)
  %arrayidx1183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 4
  store double %187, double* %arrayidx1183, align 8, !tbaa !7
  %arrayidx1188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 4
  %188 = load double, double* %arrayidx1188, align 8, !tbaa !7
  %arrayidx1194 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 4
  %189 = load double, double* %arrayidx1194, align 8, !tbaa !7
  %neg1196 = fmul double %189, 0xC004BC9EECBFB15C
  %190 = tail call double @llvm.fmuladd.f64(double %188, double 0x3F807C84B5DCC63F, double %neg1196)
  %arrayidx1201 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 4
  store double %190, double* %arrayidx1201, align 8, !tbaa !7
  %arrayidx1206 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 4
  %191 = load double, double* %arrayidx1206, align 8, !tbaa !7
  %arrayidx1212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 4
  %192 = load double, double* %arrayidx1212, align 8, !tbaa !7
  %neg1214 = fmul double %192, 0xC004BC9EECBFB15C
  %193 = tail call double @llvm.fmuladd.f64(double %191, double 0x3F807C84B5DCC63F, double %neg1214)
  %arrayidx1219 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 4
  store double %193, double* %arrayidx1219, align 8, !tbaa !7
  %arrayidx1224 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 4
  %194 = load double, double* %arrayidx1224, align 8, !tbaa !7
  %arrayidx1230 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 4
  %195 = load double, double* %arrayidx1230, align 8, !tbaa !7
  %neg1232 = fmul double %195, 0xC004BC9EECBFB15C
  %196 = tail call double @llvm.fmuladd.f64(double %194, double 0x3F807C84B5DCC63F, double %neg1232)
  %arrayidx1237 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 4
  store double %196, double* %arrayidx1237, align 8, !tbaa !7
  %arrayidx1242 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 4
  %197 = load double, double* %arrayidx1242, align 8, !tbaa !7
  %arrayidx1248 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 4
  %198 = load double, double* %arrayidx1248, align 8, !tbaa !7
  %neg1250 = fmul double %198, 0xC004BC9EECBFB15C
  %199 = tail call double @llvm.fmuladd.f64(double %197, double 0x3F807C84B5DCC63F, double %neg1250)
  %200 = fadd double %199, 0xBFFF1AEE631F8A0A
  %arrayidx1257 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 4
  store double %200, double* %arrayidx1257, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @y_solve(double* nocapture %g_rhs, double* %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !31 {
entry:
  %p_lhsAA = alloca [5 x [5 x double]], align 16
  %p_lhsBB = alloca [5 x [5 x double]], align 16
  %p_lhsCC = alloca [5 x [5 x double]], align 16
  %p_rhs = alloca [5 x double], align 16
  %p_lhsm1CC = alloca [5 x [5 x double]], align 16
  %p_rhsm1 = alloca [5 x double], align 16
  %0 = bitcast [5 x [5 x double]]* %p_lhsAA to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #7
  %1 = bitcast [5 x [5 x double]]* %p_lhsBB to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %1) #7
  %2 = bitcast [5 x [5 x double]]* %p_lhsCC to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %2) #7
  %3 = bitcast [5 x double]* %p_rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  %4 = bitcast [5 x [5 x double]]* %p_lhsm1CC to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #7
  %5 = bitcast [5 x double]* %p_rhsm1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  %call = tail call i64 @_Z13get_global_idj(i32 1) #6
  %6 = trunc i64 %call to i32
  %conv = add i32 %6, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %7 = trunc i64 %call1 to i32
  %conv3 = add i32 %7, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sub5 = add nsw i32 %gp0, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %8 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %mul = mul nsw i32 %sub5, %6
  %add11 = add nsw i32 %mul, %7
  %mul15 = mul i32 %add11, 12225
  %idxprom = sext i32 %mul15 to i64
  %arrayidx = getelementptr inbounds double, double* %g_lhs, i64 %idxprom
  %9 = bitcast double* %arrayidx to [3 x [5 x [5 x double]]]*
  %sub16 = add i32 %gp1, -1
  %arraydecay = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0
  %arrayidx18 = getelementptr inbounds double, double* %arrayidx, i64 25
  %10 = load double, double* %arrayidx18, align 8, !tbaa !7
  %arrayidx3.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 0
  store double %10, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i = getelementptr inbounds double, double* %arrayidx18, i64 1
  %11 = load double, double* %arrayidx5.i, align 8, !tbaa !7
  %arrayidx7.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 1
  store double %11, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i = getelementptr inbounds double, double* %arrayidx18, i64 2
  %12 = load double, double* %arrayidx9.i, align 8, !tbaa !7
  %arrayidx11.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 2
  store double %12, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i = getelementptr inbounds double, double* %arrayidx18, i64 3
  %13 = load double, double* %arrayidx13.i, align 8, !tbaa !7
  %arrayidx15.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 3
  store double %13, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i = getelementptr inbounds double, double* %arrayidx18, i64 4
  %14 = load double, double* %arrayidx17.i, align 8, !tbaa !7
  %arrayidx19.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 4
  store double %14, double* %arrayidx19.i, align 16, !tbaa !7
  %15 = getelementptr inbounds double, double* %arrayidx18, i64 5
  %16 = load double, double* %15, align 8, !tbaa !7
  %arrayidx23.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 0
  store double %16, double* %arrayidx23.i, align 8, !tbaa !7
  %17 = getelementptr inbounds double, double* %arrayidx18, i64 6
  %18 = load double, double* %17, align 8, !tbaa !7
  %arrayidx27.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 1
  store double %18, double* %arrayidx27.i, align 16, !tbaa !7
  %19 = getelementptr inbounds double, double* %arrayidx18, i64 7
  %20 = load double, double* %19, align 8, !tbaa !7
  %arrayidx31.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 2
  store double %20, double* %arrayidx31.i, align 8, !tbaa !7
  %21 = getelementptr inbounds double, double* %arrayidx18, i64 8
  %22 = load double, double* %21, align 8, !tbaa !7
  %arrayidx35.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 3
  store double %22, double* %arrayidx35.i, align 16, !tbaa !7
  %23 = getelementptr inbounds double, double* %arrayidx18, i64 9
  %24 = load double, double* %23, align 8, !tbaa !7
  %arrayidx39.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 4
  store double %24, double* %arrayidx39.i, align 8, !tbaa !7
  %25 = getelementptr inbounds double, double* %arrayidx18, i64 10
  %26 = load double, double* %25, align 8, !tbaa !7
  %arrayidx43.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 0
  store double %26, double* %arrayidx43.i, align 16, !tbaa !7
  %27 = getelementptr inbounds double, double* %arrayidx18, i64 11
  %28 = load double, double* %27, align 8, !tbaa !7
  %arrayidx47.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 1
  store double %28, double* %arrayidx47.i, align 8, !tbaa !7
  %29 = getelementptr inbounds double, double* %arrayidx18, i64 12
  %30 = load double, double* %29, align 8, !tbaa !7
  %arrayidx51.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 2
  store double %30, double* %arrayidx51.i, align 16, !tbaa !7
  %31 = getelementptr inbounds double, double* %arrayidx18, i64 13
  %32 = load double, double* %31, align 8, !tbaa !7
  %arrayidx55.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 3
  store double %32, double* %arrayidx55.i, align 8, !tbaa !7
  %33 = getelementptr inbounds double, double* %arrayidx18, i64 14
  %34 = load double, double* %33, align 8, !tbaa !7
  %arrayidx59.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 4
  store double %34, double* %arrayidx59.i, align 16, !tbaa !7
  %35 = getelementptr inbounds double, double* %arrayidx18, i64 15
  %36 = load double, double* %35, align 8, !tbaa !7
  %arrayidx63.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 0
  store double %36, double* %arrayidx63.i, align 8, !tbaa !7
  %37 = getelementptr inbounds double, double* %arrayidx18, i64 16
  %38 = load double, double* %37, align 8, !tbaa !7
  %arrayidx67.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 1
  store double %38, double* %arrayidx67.i, align 16, !tbaa !7
  %39 = getelementptr inbounds double, double* %arrayidx18, i64 17
  %40 = load double, double* %39, align 8, !tbaa !7
  %arrayidx71.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 2
  store double %40, double* %arrayidx71.i, align 8, !tbaa !7
  %41 = getelementptr inbounds double, double* %arrayidx18, i64 18
  %42 = load double, double* %41, align 8, !tbaa !7
  %arrayidx75.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 3
  store double %42, double* %arrayidx75.i, align 16, !tbaa !7
  %43 = getelementptr inbounds double, double* %arrayidx18, i64 19
  %44 = load double, double* %43, align 8, !tbaa !7
  %arrayidx79.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 4
  store double %44, double* %arrayidx79.i, align 8, !tbaa !7
  %45 = getelementptr inbounds double, double* %arrayidx18, i64 20
  %46 = load double, double* %45, align 8, !tbaa !7
  %arrayidx83.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 0
  store double %46, double* %arrayidx83.i, align 16, !tbaa !7
  %47 = getelementptr inbounds double, double* %arrayidx18, i64 21
  %48 = load double, double* %47, align 8, !tbaa !7
  %arrayidx87.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 1
  store double %48, double* %arrayidx87.i, align 8, !tbaa !7
  %49 = getelementptr inbounds double, double* %arrayidx18, i64 22
  %50 = load double, double* %49, align 8, !tbaa !7
  %arrayidx91.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 2
  store double %50, double* %arrayidx91.i, align 16, !tbaa !7
  %51 = getelementptr inbounds double, double* %arrayidx18, i64 23
  %52 = load double, double* %51, align 8, !tbaa !7
  %arrayidx95.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 3
  store double %52, double* %arrayidx95.i, align 8, !tbaa !7
  %53 = getelementptr inbounds double, double* %arrayidx18, i64 24
  %54 = load double, double* %53, align 8, !tbaa !7
  %arrayidx99.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 4
  store double %54, double* %arrayidx99.i, align 16, !tbaa !7
  %arraydecay20 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0
  %arrayidx22 = getelementptr inbounds double, double* %arrayidx, i64 50
  %55 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx3.i422 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 0
  store double %55, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i423 = getelementptr inbounds double, double* %arrayidx22, i64 1
  %56 = load double, double* %arrayidx5.i423, align 8, !tbaa !7
  %arrayidx7.i424 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 1
  store double %56, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i425 = getelementptr inbounds double, double* %arrayidx22, i64 2
  %57 = load double, double* %arrayidx9.i425, align 8, !tbaa !7
  %arrayidx11.i426 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 2
  store double %57, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i427 = getelementptr inbounds double, double* %arrayidx22, i64 3
  %58 = load double, double* %arrayidx13.i427, align 8, !tbaa !7
  %arrayidx15.i428 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 3
  store double %58, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i429 = getelementptr inbounds double, double* %arrayidx22, i64 4
  %59 = load double, double* %arrayidx17.i429, align 8, !tbaa !7
  %arrayidx19.i430 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 4
  store double %59, double* %arrayidx19.i430, align 16, !tbaa !7
  %60 = getelementptr inbounds double, double* %arrayidx22, i64 5
  %61 = load double, double* %60, align 8, !tbaa !7
  %arrayidx23.i432 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 0
  store double %61, double* %arrayidx23.i432, align 8, !tbaa !7
  %62 = getelementptr inbounds double, double* %arrayidx22, i64 6
  %63 = load double, double* %62, align 8, !tbaa !7
  %arrayidx27.i434 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 1
  store double %63, double* %arrayidx27.i434, align 16, !tbaa !7
  %64 = getelementptr inbounds double, double* %arrayidx22, i64 7
  %65 = load double, double* %64, align 8, !tbaa !7
  %arrayidx31.i436 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 2
  store double %65, double* %arrayidx31.i436, align 8, !tbaa !7
  %66 = getelementptr inbounds double, double* %arrayidx22, i64 8
  %67 = load double, double* %66, align 8, !tbaa !7
  %arrayidx35.i438 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 3
  store double %67, double* %arrayidx35.i438, align 16, !tbaa !7
  %68 = getelementptr inbounds double, double* %arrayidx22, i64 9
  %69 = load double, double* %68, align 8, !tbaa !7
  %arrayidx39.i440 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 4
  store double %69, double* %arrayidx39.i440, align 8, !tbaa !7
  %70 = getelementptr inbounds double, double* %arrayidx22, i64 10
  %71 = load double, double* %70, align 8, !tbaa !7
  %arrayidx43.i442 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 0
  store double %71, double* %arrayidx43.i442, align 16, !tbaa !7
  %72 = getelementptr inbounds double, double* %arrayidx22, i64 11
  %73 = load double, double* %72, align 8, !tbaa !7
  %arrayidx47.i444 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 1
  store double %73, double* %arrayidx47.i444, align 8, !tbaa !7
  %74 = getelementptr inbounds double, double* %arrayidx22, i64 12
  %75 = load double, double* %74, align 8, !tbaa !7
  %arrayidx51.i446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 2
  store double %75, double* %arrayidx51.i446, align 16, !tbaa !7
  %76 = getelementptr inbounds double, double* %arrayidx22, i64 13
  %77 = load double, double* %76, align 8, !tbaa !7
  %arrayidx55.i448 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 3
  store double %77, double* %arrayidx55.i448, align 8, !tbaa !7
  %78 = getelementptr inbounds double, double* %arrayidx22, i64 14
  %79 = load double, double* %78, align 8, !tbaa !7
  %arrayidx59.i450 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 4
  store double %79, double* %arrayidx59.i450, align 16, !tbaa !7
  %80 = getelementptr inbounds double, double* %arrayidx22, i64 15
  %81 = load double, double* %80, align 8, !tbaa !7
  %arrayidx63.i452 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 0
  store double %81, double* %arrayidx63.i452, align 8, !tbaa !7
  %82 = getelementptr inbounds double, double* %arrayidx22, i64 16
  %83 = load double, double* %82, align 8, !tbaa !7
  %arrayidx67.i454 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 1
  store double %83, double* %arrayidx67.i454, align 16, !tbaa !7
  %84 = getelementptr inbounds double, double* %arrayidx22, i64 17
  %85 = load double, double* %84, align 8, !tbaa !7
  %arrayidx71.i456 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 2
  store double %85, double* %arrayidx71.i456, align 8, !tbaa !7
  %86 = getelementptr inbounds double, double* %arrayidx22, i64 18
  %87 = load double, double* %86, align 8, !tbaa !7
  %arrayidx75.i458 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 3
  store double %87, double* %arrayidx75.i458, align 16, !tbaa !7
  %88 = getelementptr inbounds double, double* %arrayidx22, i64 19
  %89 = load double, double* %88, align 8, !tbaa !7
  %arrayidx79.i460 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 4
  store double %89, double* %arrayidx79.i460, align 8, !tbaa !7
  %90 = getelementptr inbounds double, double* %arrayidx22, i64 20
  %91 = load double, double* %90, align 8, !tbaa !7
  %arrayidx83.i462 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 0
  store double %91, double* %arrayidx83.i462, align 16, !tbaa !7
  %92 = getelementptr inbounds double, double* %arrayidx22, i64 21
  %93 = load double, double* %92, align 8, !tbaa !7
  %arrayidx87.i464 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 1
  store double %93, double* %arrayidx87.i464, align 8, !tbaa !7
  %94 = getelementptr inbounds double, double* %arrayidx22, i64 22
  %95 = load double, double* %94, align 8, !tbaa !7
  %arrayidx91.i466 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 2
  store double %95, double* %arrayidx91.i466, align 16, !tbaa !7
  %96 = getelementptr inbounds double, double* %arrayidx22, i64 23
  %97 = load double, double* %96, align 8, !tbaa !7
  %arrayidx95.i468 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 3
  store double %97, double* %arrayidx95.i468, align 8, !tbaa !7
  %98 = getelementptr inbounds double, double* %arrayidx22, i64 24
  %99 = load double, double* %98, align 8, !tbaa !7
  %arrayidx99.i470 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 4
  store double %99, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay24 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 0
  %idxprom25 = sext i32 %conv to i64
  %idxprom28 = sext i32 %conv3 to i64
  %arraydecay30 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 0, i64 %idxprom28, i64 0
  %100 = load double, double* %arraydecay30, align 8, !tbaa !7
  store double %100, double* %arraydecay24, align 16, !tbaa !7
  %arrayidx2.i471 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 0, i64 %idxprom28, i64 1
  %101 = load double, double* %arrayidx2.i471, align 8, !tbaa !7
  %arrayidx3.i472 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 1
  store double %101, double* %arrayidx3.i472, align 8, !tbaa !7
  %arrayidx4.i473 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 0, i64 %idxprom28, i64 2
  %102 = load double, double* %arrayidx4.i473, align 8, !tbaa !7
  %arrayidx5.i474 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 2
  store double %102, double* %arrayidx5.i474, align 16, !tbaa !7
  %arrayidx6.i475 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 0, i64 %idxprom28, i64 3
  %103 = load double, double* %arrayidx6.i475, align 8, !tbaa !7
  %arrayidx7.i476 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 3
  store double %103, double* %arrayidx7.i476, align 8, !tbaa !7
  %arrayidx8.i477 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 0, i64 %idxprom28, i64 4
  %104 = load double, double* %arrayidx8.i477, align 8, !tbaa !7
  %arrayidx9.i478 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 4
  store double %104, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_binvcrhs([5 x double]* nonnull %arraydecay, [5 x double]* nonnull %arraydecay20, double* nonnull %arraydecay24)
  %105 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %105, double* %arrayidx18, align 8, !tbaa !7
  %106 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %106, double* %arrayidx5.i, align 8, !tbaa !7
  %107 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %107, double* %arrayidx9.i, align 8, !tbaa !7
  %108 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %108, double* %arrayidx13.i, align 8, !tbaa !7
  %109 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %109, double* %arrayidx17.i, align 8, !tbaa !7
  %110 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %110, double* %15, align 8, !tbaa !7
  %111 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %111, double* %17, align 8, !tbaa !7
  %112 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %112, double* %19, align 8, !tbaa !7
  %113 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %113, double* %21, align 8, !tbaa !7
  %114 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %114, double* %23, align 8, !tbaa !7
  %115 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %115, double* %25, align 8, !tbaa !7
  %116 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %116, double* %27, align 8, !tbaa !7
  %117 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %117, double* %29, align 8, !tbaa !7
  %118 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %118, double* %31, align 8, !tbaa !7
  %119 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %119, double* %33, align 8, !tbaa !7
  %120 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %120, double* %35, align 8, !tbaa !7
  %121 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %121, double* %37, align 8, !tbaa !7
  %122 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %122, double* %39, align 8, !tbaa !7
  %123 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %123, double* %41, align 8, !tbaa !7
  %124 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %124, double* %43, align 8, !tbaa !7
  %125 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %125, double* %45, align 8, !tbaa !7
  %126 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %126, double* %47, align 8, !tbaa !7
  %127 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %127, double* %49, align 8, !tbaa !7
  %128 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %128, double* %51, align 8, !tbaa !7
  %129 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %129, double* %53, align 8, !tbaa !7
  %130 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %130, double* %arrayidx22, align 8, !tbaa !7
  %131 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %131, double* %arrayidx5.i423, align 8, !tbaa !7
  %132 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %132, double* %arrayidx9.i425, align 8, !tbaa !7
  %133 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %133, double* %arrayidx13.i427, align 8, !tbaa !7
  %134 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %134, double* %arrayidx17.i429, align 8, !tbaa !7
  %135 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %135, double* %60, align 8, !tbaa !7
  %136 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %136, double* %62, align 8, !tbaa !7
  %137 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %137, double* %64, align 8, !tbaa !7
  %138 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %138, double* %66, align 8, !tbaa !7
  %139 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %139, double* %68, align 8, !tbaa !7
  %140 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %140, double* %70, align 8, !tbaa !7
  %141 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %141, double* %72, align 8, !tbaa !7
  %142 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %142, double* %74, align 8, !tbaa !7
  %143 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %143, double* %76, align 8, !tbaa !7
  %144 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %144, double* %78, align 8, !tbaa !7
  %145 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %145, double* %80, align 8, !tbaa !7
  %146 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %146, double* %82, align 8, !tbaa !7
  %147 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %147, double* %84, align 8, !tbaa !7
  %148 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %148, double* %86, align 8, !tbaa !7
  %149 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %149, double* %88, align 8, !tbaa !7
  %150 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %150, double* %90, align 8, !tbaa !7
  %151 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %151, double* %92, align 8, !tbaa !7
  %152 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %152, double* %94, align 8, !tbaa !7
  %153 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %153, double* %96, align 8, !tbaa !7
  %154 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %154, double* %98, align 8, !tbaa !7
  %155 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %155, double* %arraydecay30, align 8, !tbaa !7
  %156 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %156, double* %arrayidx2.i471, align 8, !tbaa !7
  %157 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %157, double* %arrayidx4.i473, align 8, !tbaa !7
  %158 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %158, double* %arrayidx6.i475, align 8, !tbaa !7
  %159 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %159, double* %arrayidx8.i477, align 8, !tbaa !7
  %cmp50.not1217 = icmp slt i32 %gp1, 3
  br i1 %cmp50.not1217, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %arraydecay52 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0
  %arrayidx3.i1156 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 0
  %arrayidx7.i1158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 1
  %arrayidx11.i1160 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 2
  %arrayidx15.i1162 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 3
  %arrayidx19.i1164 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 4
  %arrayidx23.i1166 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 0
  %arrayidx27.i1168 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 1
  %arrayidx31.i1170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 2
  %arrayidx35.i1172 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 3
  %arrayidx39.i1174 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 4
  %arrayidx43.i1176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 0
  %arrayidx47.i1178 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 1
  %arrayidx51.i1180 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 2
  %arrayidx55.i1182 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 3
  %arrayidx59.i1184 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 4
  %arrayidx63.i1186 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 0
  %arrayidx67.i1188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 1
  %arrayidx71.i1190 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 2
  %arrayidx75.i1192 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 3
  %arrayidx79.i1194 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 4
  %arrayidx83.i1196 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 0
  %arrayidx87.i1198 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 1
  %arrayidx91.i1200 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 2
  %arrayidx95.i1202 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 3
  %arrayidx99.i1204 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 4
  %arraydecay54 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  %arrayidx3.i1148 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  %arrayidx5.i1150 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  %arrayidx7.i1152 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  %arrayidx9.i1154 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  %arraydecay56 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0
  %arrayidx3.i1098 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 0
  %arrayidx7.i1100 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 1
  %arrayidx11.i1102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 2
  %arrayidx15.i1104 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 3
  %arrayidx19.i1106 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 4
  %arrayidx23.i1108 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 0
  %arrayidx27.i1110 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 1
  %arrayidx31.i1112 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 2
  %arrayidx35.i1114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 3
  %arrayidx39.i1116 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 4
  %arrayidx43.i1118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 0
  %arrayidx47.i1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 1
  %arrayidx51.i1122 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 2
  %arrayidx55.i1124 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 3
  %arrayidx59.i1126 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 4
  %arrayidx63.i1128 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 0
  %arrayidx67.i1130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 1
  %arrayidx71.i1132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 2
  %arrayidx75.i1134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 3
  %arrayidx79.i1136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 4
  %arrayidx83.i1138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 0
  %arrayidx87.i1140 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 1
  %arrayidx91.i1142 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 2
  %arrayidx95.i1144 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 3
  %arrayidx99.i1146 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 4
  %wide.trip.count = zext i32 %sub16 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %160 = phi double [ %159, %for.body.lr.ph ], [ %349, %for.body ]
  %161 = phi double [ %158, %for.body.lr.ph ], [ %348, %for.body ]
  %162 = phi double [ %157, %for.body.lr.ph ], [ %347, %for.body ]
  %163 = phi double [ %156, %for.body.lr.ph ], [ %346, %for.body ]
  %164 = phi double [ %155, %for.body.lr.ph ], [ %345, %for.body ]
  %165 = phi double [ %154, %for.body.lr.ph ], [ %344, %for.body ]
  %166 = phi double [ %153, %for.body.lr.ph ], [ %343, %for.body ]
  %167 = phi double [ %152, %for.body.lr.ph ], [ %342, %for.body ]
  %168 = phi double [ %151, %for.body.lr.ph ], [ %341, %for.body ]
  %169 = phi double [ %150, %for.body.lr.ph ], [ %340, %for.body ]
  %170 = phi double [ %149, %for.body.lr.ph ], [ %339, %for.body ]
  %171 = phi double [ %148, %for.body.lr.ph ], [ %338, %for.body ]
  %172 = phi double [ %147, %for.body.lr.ph ], [ %337, %for.body ]
  %173 = phi double [ %146, %for.body.lr.ph ], [ %336, %for.body ]
  %174 = phi double [ %145, %for.body.lr.ph ], [ %335, %for.body ]
  %175 = phi double [ %144, %for.body.lr.ph ], [ %334, %for.body ]
  %176 = phi double [ %143, %for.body.lr.ph ], [ %333, %for.body ]
  %177 = phi double [ %142, %for.body.lr.ph ], [ %332, %for.body ]
  %178 = phi double [ %141, %for.body.lr.ph ], [ %331, %for.body ]
  %179 = phi double [ %140, %for.body.lr.ph ], [ %330, %for.body ]
  %180 = phi double [ %139, %for.body.lr.ph ], [ %329, %for.body ]
  %181 = phi double [ %138, %for.body.lr.ph ], [ %328, %for.body ]
  %182 = phi double [ %137, %for.body.lr.ph ], [ %327, %for.body ]
  %183 = phi double [ %136, %for.body.lr.ph ], [ %326, %for.body ]
  %184 = phi double [ %135, %for.body.lr.ph ], [ %325, %for.body ]
  %185 = phi double [ %134, %for.body.lr.ph ], [ %324, %for.body ]
  %186 = phi double [ %133, %for.body.lr.ph ], [ %323, %for.body ]
  %187 = phi double [ %132, %for.body.lr.ph ], [ %322, %for.body ]
  %188 = phi double [ %131, %for.body.lr.ph ], [ %321, %for.body ]
  %189 = phi double [ %130, %for.body.lr.ph ], [ %320, %for.body ]
  %indvars.iv1222 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next1223, %for.body ]
  store double %189, double* %arrayidx3.i1156, align 16, !tbaa !7
  store double %188, double* %arrayidx7.i1158, align 8, !tbaa !7
  store double %187, double* %arrayidx11.i1160, align 16, !tbaa !7
  store double %186, double* %arrayidx15.i1162, align 8, !tbaa !7
  store double %185, double* %arrayidx19.i1164, align 16, !tbaa !7
  store double %184, double* %arrayidx23.i1166, align 8, !tbaa !7
  store double %183, double* %arrayidx27.i1168, align 16, !tbaa !7
  store double %182, double* %arrayidx31.i1170, align 8, !tbaa !7
  store double %181, double* %arrayidx35.i1172, align 16, !tbaa !7
  store double %180, double* %arrayidx39.i1174, align 8, !tbaa !7
  store double %179, double* %arrayidx43.i1176, align 16, !tbaa !7
  store double %178, double* %arrayidx47.i1178, align 8, !tbaa !7
  store double %177, double* %arrayidx51.i1180, align 16, !tbaa !7
  store double %176, double* %arrayidx55.i1182, align 8, !tbaa !7
  store double %175, double* %arrayidx59.i1184, align 16, !tbaa !7
  store double %174, double* %arrayidx63.i1186, align 8, !tbaa !7
  store double %173, double* %arrayidx67.i1188, align 16, !tbaa !7
  store double %172, double* %arrayidx71.i1190, align 8, !tbaa !7
  store double %171, double* %arrayidx75.i1192, align 16, !tbaa !7
  store double %170, double* %arrayidx79.i1194, align 8, !tbaa !7
  store double %169, double* %arrayidx83.i1196, align 16, !tbaa !7
  store double %168, double* %arrayidx87.i1198, align 8, !tbaa !7
  store double %167, double* %arrayidx91.i1200, align 16, !tbaa !7
  store double %166, double* %arrayidx95.i1202, align 8, !tbaa !7
  store double %165, double* %arrayidx99.i1204, align 16, !tbaa !7
  store double %164, double* %arraydecay54, align 16, !tbaa !7
  store double %163, double* %arrayidx3.i1148, align 8, !tbaa !7
  store double %162, double* %arrayidx5.i1150, align 16, !tbaa !7
  store double %161, double* %arrayidx7.i1152, align 8, !tbaa !7
  store double %160, double* %arrayidx9.i1154, align 16, !tbaa !7
  %arrayidx1.i1097 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 0
  %190 = load double, double* %arrayidx1.i1097, align 8, !tbaa !7
  store double %190, double* %arrayidx3.i1098, align 16, !tbaa !7
  %arrayidx5.i1099 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 1
  %191 = load double, double* %arrayidx5.i1099, align 8, !tbaa !7
  store double %191, double* %arrayidx7.i1100, align 8, !tbaa !7
  %arrayidx9.i1101 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 2
  %192 = load double, double* %arrayidx9.i1101, align 8, !tbaa !7
  store double %192, double* %arrayidx11.i1102, align 16, !tbaa !7
  %arrayidx13.i1103 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 3
  %193 = load double, double* %arrayidx13.i1103, align 8, !tbaa !7
  store double %193, double* %arrayidx15.i1104, align 8, !tbaa !7
  %arrayidx17.i1105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 4
  %194 = load double, double* %arrayidx17.i1105, align 8, !tbaa !7
  store double %194, double* %arrayidx19.i1106, align 16, !tbaa !7
  %arrayidx21.i1107 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 0
  %195 = load double, double* %arrayidx21.i1107, align 8, !tbaa !7
  store double %195, double* %arrayidx23.i1108, align 8, !tbaa !7
  %arrayidx25.i1109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 1
  %196 = load double, double* %arrayidx25.i1109, align 8, !tbaa !7
  store double %196, double* %arrayidx27.i1110, align 16, !tbaa !7
  %arrayidx29.i1111 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 2
  %197 = load double, double* %arrayidx29.i1111, align 8, !tbaa !7
  store double %197, double* %arrayidx31.i1112, align 8, !tbaa !7
  %arrayidx33.i1113 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 3
  %198 = load double, double* %arrayidx33.i1113, align 8, !tbaa !7
  store double %198, double* %arrayidx35.i1114, align 16, !tbaa !7
  %arrayidx37.i1115 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 4
  %199 = load double, double* %arrayidx37.i1115, align 8, !tbaa !7
  store double %199, double* %arrayidx39.i1116, align 8, !tbaa !7
  %arrayidx41.i1117 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 0
  %200 = load double, double* %arrayidx41.i1117, align 8, !tbaa !7
  store double %200, double* %arrayidx43.i1118, align 16, !tbaa !7
  %arrayidx45.i1119 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 1
  %201 = load double, double* %arrayidx45.i1119, align 8, !tbaa !7
  store double %201, double* %arrayidx47.i1120, align 8, !tbaa !7
  %arrayidx49.i1121 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 2
  %202 = load double, double* %arrayidx49.i1121, align 8, !tbaa !7
  store double %202, double* %arrayidx51.i1122, align 16, !tbaa !7
  %arrayidx53.i1123 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 3
  %203 = load double, double* %arrayidx53.i1123, align 8, !tbaa !7
  store double %203, double* %arrayidx55.i1124, align 8, !tbaa !7
  %arrayidx57.i1125 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 4
  %204 = load double, double* %arrayidx57.i1125, align 8, !tbaa !7
  store double %204, double* %arrayidx59.i1126, align 16, !tbaa !7
  %arrayidx61.i1127 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 0
  %205 = load double, double* %arrayidx61.i1127, align 8, !tbaa !7
  store double %205, double* %arrayidx63.i1128, align 8, !tbaa !7
  %arrayidx65.i1129 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 1
  %206 = load double, double* %arrayidx65.i1129, align 8, !tbaa !7
  store double %206, double* %arrayidx67.i1130, align 16, !tbaa !7
  %arrayidx69.i1131 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 2
  %207 = load double, double* %arrayidx69.i1131, align 8, !tbaa !7
  store double %207, double* %arrayidx71.i1132, align 8, !tbaa !7
  %arrayidx73.i1133 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 3
  %208 = load double, double* %arrayidx73.i1133, align 8, !tbaa !7
  store double %208, double* %arrayidx75.i1134, align 16, !tbaa !7
  %arrayidx77.i1135 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 4
  %209 = load double, double* %arrayidx77.i1135, align 8, !tbaa !7
  store double %209, double* %arrayidx79.i1136, align 8, !tbaa !7
  %arrayidx81.i1137 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 0
  %210 = load double, double* %arrayidx81.i1137, align 8, !tbaa !7
  store double %210, double* %arrayidx83.i1138, align 16, !tbaa !7
  %arrayidx85.i1139 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 1
  %211 = load double, double* %arrayidx85.i1139, align 8, !tbaa !7
  store double %211, double* %arrayidx87.i1140, align 8, !tbaa !7
  %arrayidx89.i1141 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 2
  %212 = load double, double* %arrayidx89.i1141, align 8, !tbaa !7
  store double %212, double* %arrayidx91.i1142, align 16, !tbaa !7
  %arrayidx93.i1143 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 3
  %213 = load double, double* %arrayidx93.i1143, align 8, !tbaa !7
  store double %213, double* %arrayidx95.i1144, align 8, !tbaa !7
  %arrayidx97.i1145 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 4
  %214 = load double, double* %arrayidx97.i1145, align 8, !tbaa !7
  store double %214, double* %arrayidx99.i1146, align 16, !tbaa !7
  %arrayidx1.i1047 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 0
  %215 = load double, double* %arrayidx1.i1047, align 8, !tbaa !7
  store double %215, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i1049 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 1
  %216 = load double, double* %arrayidx5.i1049, align 8, !tbaa !7
  store double %216, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i1051 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 2
  %217 = load double, double* %arrayidx9.i1051, align 8, !tbaa !7
  store double %217, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i1053 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 3
  %218 = load double, double* %arrayidx13.i1053, align 8, !tbaa !7
  store double %218, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i1055 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 4
  %219 = load double, double* %arrayidx17.i1055, align 8, !tbaa !7
  store double %219, double* %arrayidx19.i, align 16, !tbaa !7
  %arrayidx21.i1057 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 0
  %220 = load double, double* %arrayidx21.i1057, align 8, !tbaa !7
  store double %220, double* %arrayidx23.i, align 8, !tbaa !7
  %arrayidx25.i1059 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 1
  %221 = load double, double* %arrayidx25.i1059, align 8, !tbaa !7
  store double %221, double* %arrayidx27.i, align 16, !tbaa !7
  %arrayidx29.i1061 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 2
  %222 = load double, double* %arrayidx29.i1061, align 8, !tbaa !7
  store double %222, double* %arrayidx31.i, align 8, !tbaa !7
  %arrayidx33.i1063 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 3
  %223 = load double, double* %arrayidx33.i1063, align 8, !tbaa !7
  store double %223, double* %arrayidx35.i, align 16, !tbaa !7
  %arrayidx37.i1065 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 4
  %224 = load double, double* %arrayidx37.i1065, align 8, !tbaa !7
  store double %224, double* %arrayidx39.i, align 8, !tbaa !7
  %arrayidx41.i1067 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 0
  %225 = load double, double* %arrayidx41.i1067, align 8, !tbaa !7
  store double %225, double* %arrayidx43.i, align 16, !tbaa !7
  %arrayidx45.i1069 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 1
  %226 = load double, double* %arrayidx45.i1069, align 8, !tbaa !7
  store double %226, double* %arrayidx47.i, align 8, !tbaa !7
  %arrayidx49.i1071 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 2
  %227 = load double, double* %arrayidx49.i1071, align 8, !tbaa !7
  store double %227, double* %arrayidx51.i, align 16, !tbaa !7
  %arrayidx53.i1073 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 3
  %228 = load double, double* %arrayidx53.i1073, align 8, !tbaa !7
  store double %228, double* %arrayidx55.i, align 8, !tbaa !7
  %arrayidx57.i1075 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 4
  %229 = load double, double* %arrayidx57.i1075, align 8, !tbaa !7
  store double %229, double* %arrayidx59.i, align 16, !tbaa !7
  %arrayidx61.i1077 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 0
  %230 = load double, double* %arrayidx61.i1077, align 8, !tbaa !7
  store double %230, double* %arrayidx63.i, align 8, !tbaa !7
  %arrayidx65.i1079 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 1
  %231 = load double, double* %arrayidx65.i1079, align 8, !tbaa !7
  store double %231, double* %arrayidx67.i, align 16, !tbaa !7
  %arrayidx69.i1081 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 2
  %232 = load double, double* %arrayidx69.i1081, align 8, !tbaa !7
  store double %232, double* %arrayidx71.i, align 8, !tbaa !7
  %arrayidx73.i1083 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 3
  %233 = load double, double* %arrayidx73.i1083, align 8, !tbaa !7
  store double %233, double* %arrayidx75.i, align 16, !tbaa !7
  %arrayidx77.i1085 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 4
  %234 = load double, double* %arrayidx77.i1085, align 8, !tbaa !7
  store double %234, double* %arrayidx79.i, align 8, !tbaa !7
  %arrayidx81.i1087 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 0
  %235 = load double, double* %arrayidx81.i1087, align 8, !tbaa !7
  store double %235, double* %arrayidx83.i, align 16, !tbaa !7
  %arrayidx85.i1089 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 1
  %236 = load double, double* %arrayidx85.i1089, align 8, !tbaa !7
  store double %236, double* %arrayidx87.i, align 8, !tbaa !7
  %arrayidx89.i1091 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 2
  %237 = load double, double* %arrayidx89.i1091, align 8, !tbaa !7
  store double %237, double* %arrayidx91.i, align 16, !tbaa !7
  %arrayidx93.i1093 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 3
  %238 = load double, double* %arrayidx93.i1093, align 8, !tbaa !7
  store double %238, double* %arrayidx95.i, align 8, !tbaa !7
  %arrayidx97.i1095 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 4
  %239 = load double, double* %arrayidx97.i1095, align 8, !tbaa !7
  store double %239, double* %arrayidx99.i, align 16, !tbaa !7
  %arrayidx1.i997 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 0
  %240 = load double, double* %arrayidx1.i997, align 8, !tbaa !7
  store double %240, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i999 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 1
  %241 = load double, double* %arrayidx5.i999, align 8, !tbaa !7
  store double %241, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i1001 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 2
  %242 = load double, double* %arrayidx9.i1001, align 8, !tbaa !7
  store double %242, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i1003 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 3
  %243 = load double, double* %arrayidx13.i1003, align 8, !tbaa !7
  store double %243, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i1005 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 4
  %244 = load double, double* %arrayidx17.i1005, align 8, !tbaa !7
  store double %244, double* %arrayidx19.i430, align 16, !tbaa !7
  %arrayidx21.i1007 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 0
  %245 = load double, double* %arrayidx21.i1007, align 8, !tbaa !7
  store double %245, double* %arrayidx23.i432, align 8, !tbaa !7
  %arrayidx25.i1009 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 1
  %246 = load double, double* %arrayidx25.i1009, align 8, !tbaa !7
  store double %246, double* %arrayidx27.i434, align 16, !tbaa !7
  %arrayidx29.i1011 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 2
  %247 = load double, double* %arrayidx29.i1011, align 8, !tbaa !7
  store double %247, double* %arrayidx31.i436, align 8, !tbaa !7
  %arrayidx33.i1013 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 3
  %248 = load double, double* %arrayidx33.i1013, align 8, !tbaa !7
  store double %248, double* %arrayidx35.i438, align 16, !tbaa !7
  %arrayidx37.i1015 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 4
  %249 = load double, double* %arrayidx37.i1015, align 8, !tbaa !7
  store double %249, double* %arrayidx39.i440, align 8, !tbaa !7
  %arrayidx41.i1017 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 0
  %250 = load double, double* %arrayidx41.i1017, align 8, !tbaa !7
  store double %250, double* %arrayidx43.i442, align 16, !tbaa !7
  %arrayidx45.i1019 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 1
  %251 = load double, double* %arrayidx45.i1019, align 8, !tbaa !7
  store double %251, double* %arrayidx47.i444, align 8, !tbaa !7
  %arrayidx49.i1021 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 2
  %252 = load double, double* %arrayidx49.i1021, align 8, !tbaa !7
  store double %252, double* %arrayidx51.i446, align 16, !tbaa !7
  %arrayidx53.i1023 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 3
  %253 = load double, double* %arrayidx53.i1023, align 8, !tbaa !7
  store double %253, double* %arrayidx55.i448, align 8, !tbaa !7
  %arrayidx57.i1025 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 4
  %254 = load double, double* %arrayidx57.i1025, align 8, !tbaa !7
  store double %254, double* %arrayidx59.i450, align 16, !tbaa !7
  %arrayidx61.i1027 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 0
  %255 = load double, double* %arrayidx61.i1027, align 8, !tbaa !7
  store double %255, double* %arrayidx63.i452, align 8, !tbaa !7
  %arrayidx65.i1029 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 1
  %256 = load double, double* %arrayidx65.i1029, align 8, !tbaa !7
  store double %256, double* %arrayidx67.i454, align 16, !tbaa !7
  %arrayidx69.i1031 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 2
  %257 = load double, double* %arrayidx69.i1031, align 8, !tbaa !7
  store double %257, double* %arrayidx71.i456, align 8, !tbaa !7
  %arrayidx73.i1033 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 3
  %258 = load double, double* %arrayidx73.i1033, align 8, !tbaa !7
  store double %258, double* %arrayidx75.i458, align 16, !tbaa !7
  %arrayidx77.i1035 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 4
  %259 = load double, double* %arrayidx77.i1035, align 8, !tbaa !7
  store double %259, double* %arrayidx79.i460, align 8, !tbaa !7
  %arrayidx81.i1037 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 0
  %260 = load double, double* %arrayidx81.i1037, align 8, !tbaa !7
  store double %260, double* %arrayidx83.i462, align 16, !tbaa !7
  %arrayidx85.i1039 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 1
  %261 = load double, double* %arrayidx85.i1039, align 8, !tbaa !7
  store double %261, double* %arrayidx87.i464, align 8, !tbaa !7
  %arrayidx89.i1041 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 2
  %262 = load double, double* %arrayidx89.i1041, align 8, !tbaa !7
  store double %262, double* %arrayidx91.i466, align 16, !tbaa !7
  %arrayidx93.i1043 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 3
  %263 = load double, double* %arrayidx93.i1043, align 8, !tbaa !7
  store double %263, double* %arrayidx95.i468, align 8, !tbaa !7
  %arrayidx97.i1045 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 4
  %264 = load double, double* %arrayidx97.i1045, align 8, !tbaa !7
  store double %264, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay78 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1222, i64 %idxprom28, i64 0
  %265 = load double, double* %arraydecay78, align 8, !tbaa !7
  %arrayidx2.i989 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1222, i64 %idxprom28, i64 1
  %266 = load double, double* %arrayidx2.i989, align 8, !tbaa !7
  %arrayidx4.i991 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1222, i64 %idxprom28, i64 2
  %267 = load double, double* %arrayidx4.i991, align 8, !tbaa !7
  %arrayidx6.i993 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1222, i64 %idxprom28, i64 3
  %268 = load double, double* %arrayidx6.i993, align 8, !tbaa !7
  %arrayidx8.i995 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1222, i64 %idxprom28, i64 4
  %269 = load double, double* %arrayidx8.i995, align 8, !tbaa !7
  %neg.i932 = fneg double %190
  %270 = call double @llvm.fmuladd.f64(double %neg.i932, double %164, double %265) #7
  %neg7.i935 = fneg double %195
  %271 = call double @llvm.fmuladd.f64(double %neg7.i935, double %163, double %270) #7
  %neg11.i938 = fneg double %200
  %272 = call double @llvm.fmuladd.f64(double %neg11.i938, double %162, double %271) #7
  %neg15.i941 = fneg double %205
  %273 = call double @llvm.fmuladd.f64(double %neg15.i941, double %161, double %272) #7
  %neg19.i944 = fneg double %210
  %274 = call double @llvm.fmuladd.f64(double %neg19.i944, double %160, double %273) #7
  store double %274, double* %arraydecay24, align 16, !tbaa !7
  %neg25.i947 = fneg double %191
  %275 = call double @llvm.fmuladd.f64(double %neg25.i947, double %164, double %266) #7
  %neg29.i949 = fneg double %196
  %276 = call double @llvm.fmuladd.f64(double %neg29.i949, double %163, double %275) #7
  %neg33.i951 = fneg double %201
  %277 = call double @llvm.fmuladd.f64(double %neg33.i951, double %162, double %276) #7
  %neg37.i953 = fneg double %206
  %278 = call double @llvm.fmuladd.f64(double %neg37.i953, double %161, double %277) #7
  %neg41.i955 = fneg double %211
  %279 = call double @llvm.fmuladd.f64(double %neg41.i955, double %160, double %278) #7
  store double %279, double* %arrayidx3.i472, align 8, !tbaa !7
  %neg47.i958 = fneg double %192
  %280 = call double @llvm.fmuladd.f64(double %neg47.i958, double %164, double %267) #7
  %neg51.i960 = fneg double %197
  %281 = call double @llvm.fmuladd.f64(double %neg51.i960, double %163, double %280) #7
  %neg55.i962 = fneg double %202
  %282 = call double @llvm.fmuladd.f64(double %neg55.i962, double %162, double %281) #7
  %neg59.i964 = fneg double %207
  %283 = call double @llvm.fmuladd.f64(double %neg59.i964, double %161, double %282) #7
  %neg63.i966 = fneg double %212
  %284 = call double @llvm.fmuladd.f64(double %neg63.i966, double %160, double %283) #7
  store double %284, double* %arrayidx5.i474, align 16, !tbaa !7
  %neg69.i969 = fneg double %193
  %285 = call double @llvm.fmuladd.f64(double %neg69.i969, double %164, double %268) #7
  %neg73.i971 = fneg double %198
  %286 = call double @llvm.fmuladd.f64(double %neg73.i971, double %163, double %285) #7
  %neg77.i973 = fneg double %203
  %287 = call double @llvm.fmuladd.f64(double %neg77.i973, double %162, double %286) #7
  %neg81.i975 = fneg double %208
  %288 = call double @llvm.fmuladd.f64(double %neg81.i975, double %161, double %287) #7
  %neg85.i977 = fneg double %213
  %289 = call double @llvm.fmuladd.f64(double %neg85.i977, double %160, double %288) #7
  store double %289, double* %arrayidx7.i476, align 8, !tbaa !7
  %neg91.i980 = fneg double %194
  %290 = call double @llvm.fmuladd.f64(double %neg91.i980, double %164, double %269) #7
  %neg95.i982 = fneg double %199
  %291 = call double @llvm.fmuladd.f64(double %neg95.i982, double %163, double %290) #7
  %neg99.i984 = fneg double %204
  %292 = call double @llvm.fmuladd.f64(double %neg99.i984, double %162, double %291) #7
  %neg103.i986 = fneg double %209
  %293 = call double @llvm.fmuladd.f64(double %neg103.i986, double %161, double %292) #7
  %neg107.i988 = fneg double %214
  %294 = call double @llvm.fmuladd.f64(double %neg107.i988, double %160, double %293) #7
  store double %294, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_matmul_sub([5 x double]* nonnull %arraydecay56, [5 x double]* nonnull %arraydecay52, [5 x double]* nonnull %arraydecay)
  call void @p_binvcrhs([5 x double]* nonnull %arraydecay, [5 x double]* nonnull %arraydecay20, double* nonnull %arraydecay24)
  %295 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %295, double* %arrayidx1.i1047, align 8, !tbaa !7
  %296 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %296, double* %arrayidx5.i1049, align 8, !tbaa !7
  %297 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %297, double* %arrayidx9.i1051, align 8, !tbaa !7
  %298 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %298, double* %arrayidx13.i1053, align 8, !tbaa !7
  %299 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %299, double* %arrayidx17.i1055, align 8, !tbaa !7
  %300 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %300, double* %arrayidx21.i1057, align 8, !tbaa !7
  %301 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %301, double* %arrayidx25.i1059, align 8, !tbaa !7
  %302 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %302, double* %arrayidx29.i1061, align 8, !tbaa !7
  %303 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %303, double* %arrayidx33.i1063, align 8, !tbaa !7
  %304 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %304, double* %arrayidx37.i1065, align 8, !tbaa !7
  %305 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %305, double* %arrayidx41.i1067, align 8, !tbaa !7
  %306 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %306, double* %arrayidx45.i1069, align 8, !tbaa !7
  %307 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %307, double* %arrayidx49.i1071, align 8, !tbaa !7
  %308 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %308, double* %arrayidx53.i1073, align 8, !tbaa !7
  %309 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %309, double* %arrayidx57.i1075, align 8, !tbaa !7
  %310 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %310, double* %arrayidx61.i1077, align 8, !tbaa !7
  %311 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %311, double* %arrayidx65.i1079, align 8, !tbaa !7
  %312 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %312, double* %arrayidx69.i1081, align 8, !tbaa !7
  %313 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %313, double* %arrayidx73.i1083, align 8, !tbaa !7
  %314 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %314, double* %arrayidx77.i1085, align 8, !tbaa !7
  %315 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %315, double* %arrayidx81.i1087, align 8, !tbaa !7
  %316 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %316, double* %arrayidx85.i1089, align 8, !tbaa !7
  %317 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %317, double* %arrayidx89.i1091, align 8, !tbaa !7
  %318 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %318, double* %arrayidx93.i1093, align 8, !tbaa !7
  %319 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %319, double* %arrayidx97.i1095, align 8, !tbaa !7
  %320 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %320, double* %arrayidx1.i997, align 8, !tbaa !7
  %321 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %321, double* %arrayidx5.i999, align 8, !tbaa !7
  %322 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %322, double* %arrayidx9.i1001, align 8, !tbaa !7
  %323 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %323, double* %arrayidx13.i1003, align 8, !tbaa !7
  %324 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %324, double* %arrayidx17.i1005, align 8, !tbaa !7
  %325 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %325, double* %arrayidx21.i1007, align 8, !tbaa !7
  %326 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %326, double* %arrayidx25.i1009, align 8, !tbaa !7
  %327 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %327, double* %arrayidx29.i1011, align 8, !tbaa !7
  %328 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %328, double* %arrayidx33.i1013, align 8, !tbaa !7
  %329 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %329, double* %arrayidx37.i1015, align 8, !tbaa !7
  %330 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %330, double* %arrayidx41.i1017, align 8, !tbaa !7
  %331 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %331, double* %arrayidx45.i1019, align 8, !tbaa !7
  %332 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %332, double* %arrayidx49.i1021, align 8, !tbaa !7
  %333 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %333, double* %arrayidx53.i1023, align 8, !tbaa !7
  %334 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %334, double* %arrayidx57.i1025, align 8, !tbaa !7
  %335 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %335, double* %arrayidx61.i1027, align 8, !tbaa !7
  %336 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %336, double* %arrayidx65.i1029, align 8, !tbaa !7
  %337 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %337, double* %arrayidx69.i1031, align 8, !tbaa !7
  %338 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %338, double* %arrayidx73.i1033, align 8, !tbaa !7
  %339 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %339, double* %arrayidx77.i1035, align 8, !tbaa !7
  %340 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %340, double* %arrayidx81.i1037, align 8, !tbaa !7
  %341 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %341, double* %arrayidx85.i1039, align 8, !tbaa !7
  %342 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %342, double* %arrayidx89.i1041, align 8, !tbaa !7
  %343 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %343, double* %arrayidx93.i1043, align 8, !tbaa !7
  %344 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %344, double* %arrayidx97.i1045, align 8, !tbaa !7
  %345 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %345, double* %arraydecay78, align 8, !tbaa !7
  %346 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %346, double* %arrayidx2.i989, align 8, !tbaa !7
  %347 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %347, double* %arrayidx4.i991, align 8, !tbaa !7
  %348 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %348, double* %arrayidx6.i993, align 8, !tbaa !7
  %349 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %349, double* %arrayidx8.i995, align 8, !tbaa !7
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 1
  %exitcond1224.not = icmp eq i64 %indvars.iv.next1223, %wide.trip.count
  br i1 %exitcond1224.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %350 = phi double [ %159, %if.end ], [ %349, %for.body ]
  %351 = phi double [ %158, %if.end ], [ %348, %for.body ]
  %352 = phi double [ %157, %if.end ], [ %347, %for.body ]
  %353 = phi double [ %156, %if.end ], [ %346, %for.body ]
  %354 = phi double [ %155, %if.end ], [ %345, %for.body ]
  %355 = phi double [ %154, %if.end ], [ %344, %for.body ]
  %356 = phi double [ %153, %if.end ], [ %343, %for.body ]
  %357 = phi double [ %152, %if.end ], [ %342, %for.body ]
  %358 = phi double [ %151, %if.end ], [ %341, %for.body ]
  %359 = phi double [ %150, %if.end ], [ %340, %for.body ]
  %360 = phi double [ %149, %if.end ], [ %339, %for.body ]
  %361 = phi double [ %148, %if.end ], [ %338, %for.body ]
  %362 = phi double [ %147, %if.end ], [ %337, %for.body ]
  %363 = phi double [ %146, %if.end ], [ %336, %for.body ]
  %364 = phi double [ %145, %if.end ], [ %335, %for.body ]
  %365 = phi double [ %144, %if.end ], [ %334, %for.body ]
  %366 = phi double [ %143, %if.end ], [ %333, %for.body ]
  %367 = phi double [ %142, %if.end ], [ %332, %for.body ]
  %368 = phi double [ %141, %if.end ], [ %331, %for.body ]
  %369 = phi double [ %140, %if.end ], [ %330, %for.body ]
  %370 = phi double [ %139, %if.end ], [ %329, %for.body ]
  %371 = phi double [ %138, %if.end ], [ %328, %for.body ]
  %372 = phi double [ %137, %if.end ], [ %327, %for.body ]
  %373 = phi double [ %136, %if.end ], [ %326, %for.body ]
  %374 = phi double [ %135, %if.end ], [ %325, %for.body ]
  %375 = phi double [ %134, %if.end ], [ %324, %for.body ]
  %376 = phi double [ %133, %if.end ], [ %323, %for.body ]
  %377 = phi double [ %132, %if.end ], [ %322, %for.body ]
  %378 = phi double [ %131, %if.end ], [ %321, %for.body ]
  %379 = phi double [ %130, %if.end ], [ %320, %for.body ]
  %arraydecay106 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0
  %arrayidx3.i674 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 0
  store double %379, double* %arrayidx3.i674, align 16, !tbaa !7
  %arrayidx7.i676 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 1
  store double %378, double* %arrayidx7.i676, align 8, !tbaa !7
  %arrayidx11.i678 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 2
  store double %377, double* %arrayidx11.i678, align 16, !tbaa !7
  %arrayidx15.i680 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 3
  store double %376, double* %arrayidx15.i680, align 8, !tbaa !7
  %arrayidx19.i682 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 4
  store double %375, double* %arrayidx19.i682, align 16, !tbaa !7
  %arrayidx23.i684 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 0
  store double %374, double* %arrayidx23.i684, align 8, !tbaa !7
  %arrayidx27.i686 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 1
  store double %373, double* %arrayidx27.i686, align 16, !tbaa !7
  %arrayidx31.i688 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 2
  store double %372, double* %arrayidx31.i688, align 8, !tbaa !7
  %arrayidx35.i690 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 3
  store double %371, double* %arrayidx35.i690, align 16, !tbaa !7
  %arrayidx39.i692 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 4
  store double %370, double* %arrayidx39.i692, align 8, !tbaa !7
  %arrayidx43.i694 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 0
  store double %369, double* %arrayidx43.i694, align 16, !tbaa !7
  %arrayidx47.i696 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 1
  store double %368, double* %arrayidx47.i696, align 8, !tbaa !7
  %arrayidx51.i698 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 2
  store double %367, double* %arrayidx51.i698, align 16, !tbaa !7
  %arrayidx55.i700 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 3
  store double %366, double* %arrayidx55.i700, align 8, !tbaa !7
  %arrayidx59.i702 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 4
  store double %365, double* %arrayidx59.i702, align 16, !tbaa !7
  %arrayidx63.i704 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 0
  store double %364, double* %arrayidx63.i704, align 8, !tbaa !7
  %arrayidx67.i706 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 1
  store double %363, double* %arrayidx67.i706, align 16, !tbaa !7
  %arrayidx71.i708 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 2
  store double %362, double* %arrayidx71.i708, align 8, !tbaa !7
  %arrayidx75.i710 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 3
  store double %361, double* %arrayidx75.i710, align 16, !tbaa !7
  %arrayidx79.i712 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 4
  store double %360, double* %arrayidx79.i712, align 8, !tbaa !7
  %arrayidx83.i714 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 0
  store double %359, double* %arrayidx83.i714, align 16, !tbaa !7
  %arrayidx87.i716 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 1
  store double %358, double* %arrayidx87.i716, align 8, !tbaa !7
  %arrayidx91.i718 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 2
  store double %357, double* %arrayidx91.i718, align 16, !tbaa !7
  %arrayidx95.i720 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 3
  store double %356, double* %arrayidx95.i720, align 8, !tbaa !7
  %arrayidx99.i722 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 4
  store double %355, double* %arrayidx99.i722, align 16, !tbaa !7
  %arraydecay108 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  store double %354, double* %arraydecay108, align 16, !tbaa !7
  %arrayidx3.i666 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  store double %353, double* %arrayidx3.i666, align 8, !tbaa !7
  %arrayidx5.i668 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  store double %352, double* %arrayidx5.i668, align 16, !tbaa !7
  %arrayidx7.i670 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  store double %351, double* %arrayidx7.i670, align 8, !tbaa !7
  %arrayidx9.i672 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  store double %350, double* %arrayidx9.i672, align 16, !tbaa !7
  %arraydecay110 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0
  %idxprom111 = sext i32 %sub16 to i64
  %arrayidx1.i615 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 0
  %380 = load double, double* %arrayidx1.i615, align 8, !tbaa !7
  %arrayidx3.i616 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 0
  store double %380, double* %arrayidx3.i616, align 16, !tbaa !7
  %arrayidx5.i617 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 1
  %381 = load double, double* %arrayidx5.i617, align 8, !tbaa !7
  %arrayidx7.i618 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 1
  store double %381, double* %arrayidx7.i618, align 8, !tbaa !7
  %arrayidx9.i619 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 2
  %382 = load double, double* %arrayidx9.i619, align 8, !tbaa !7
  %arrayidx11.i620 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 2
  store double %382, double* %arrayidx11.i620, align 16, !tbaa !7
  %arrayidx13.i621 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 3
  %383 = load double, double* %arrayidx13.i621, align 8, !tbaa !7
  %arrayidx15.i622 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 3
  store double %383, double* %arrayidx15.i622, align 8, !tbaa !7
  %arrayidx17.i623 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 4
  %384 = load double, double* %arrayidx17.i623, align 8, !tbaa !7
  %arrayidx19.i624 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 4
  store double %384, double* %arrayidx19.i624, align 16, !tbaa !7
  %arrayidx21.i625 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 0
  %385 = load double, double* %arrayidx21.i625, align 8, !tbaa !7
  %arrayidx23.i626 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 0
  store double %385, double* %arrayidx23.i626, align 8, !tbaa !7
  %arrayidx25.i627 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 1
  %386 = load double, double* %arrayidx25.i627, align 8, !tbaa !7
  %arrayidx27.i628 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 1
  store double %386, double* %arrayidx27.i628, align 16, !tbaa !7
  %arrayidx29.i629 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 2
  %387 = load double, double* %arrayidx29.i629, align 8, !tbaa !7
  %arrayidx31.i630 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 2
  store double %387, double* %arrayidx31.i630, align 8, !tbaa !7
  %arrayidx33.i631 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 3
  %388 = load double, double* %arrayidx33.i631, align 8, !tbaa !7
  %arrayidx35.i632 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 3
  store double %388, double* %arrayidx35.i632, align 16, !tbaa !7
  %arrayidx37.i633 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 4
  %389 = load double, double* %arrayidx37.i633, align 8, !tbaa !7
  %arrayidx39.i634 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 4
  store double %389, double* %arrayidx39.i634, align 8, !tbaa !7
  %arrayidx41.i635 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 0
  %390 = load double, double* %arrayidx41.i635, align 8, !tbaa !7
  %arrayidx43.i636 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 0
  store double %390, double* %arrayidx43.i636, align 16, !tbaa !7
  %arrayidx45.i637 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 1
  %391 = load double, double* %arrayidx45.i637, align 8, !tbaa !7
  %arrayidx47.i638 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 1
  store double %391, double* %arrayidx47.i638, align 8, !tbaa !7
  %arrayidx49.i639 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 2
  %392 = load double, double* %arrayidx49.i639, align 8, !tbaa !7
  %arrayidx51.i640 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 2
  store double %392, double* %arrayidx51.i640, align 16, !tbaa !7
  %arrayidx53.i641 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 3
  %393 = load double, double* %arrayidx53.i641, align 8, !tbaa !7
  %arrayidx55.i642 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 3
  store double %393, double* %arrayidx55.i642, align 8, !tbaa !7
  %arrayidx57.i643 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 4
  %394 = load double, double* %arrayidx57.i643, align 8, !tbaa !7
  %arrayidx59.i644 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 4
  store double %394, double* %arrayidx59.i644, align 16, !tbaa !7
  %arrayidx61.i645 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 0
  %395 = load double, double* %arrayidx61.i645, align 8, !tbaa !7
  %arrayidx63.i646 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 0
  store double %395, double* %arrayidx63.i646, align 8, !tbaa !7
  %arrayidx65.i647 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 1
  %396 = load double, double* %arrayidx65.i647, align 8, !tbaa !7
  %arrayidx67.i648 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 1
  store double %396, double* %arrayidx67.i648, align 16, !tbaa !7
  %arrayidx69.i649 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 2
  %397 = load double, double* %arrayidx69.i649, align 8, !tbaa !7
  %arrayidx71.i650 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 2
  store double %397, double* %arrayidx71.i650, align 8, !tbaa !7
  %arrayidx73.i651 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 3
  %398 = load double, double* %arrayidx73.i651, align 8, !tbaa !7
  %arrayidx75.i652 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 3
  store double %398, double* %arrayidx75.i652, align 16, !tbaa !7
  %arrayidx77.i653 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 4
  %399 = load double, double* %arrayidx77.i653, align 8, !tbaa !7
  %arrayidx79.i654 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 4
  store double %399, double* %arrayidx79.i654, align 8, !tbaa !7
  %arrayidx81.i655 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 0
  %400 = load double, double* %arrayidx81.i655, align 8, !tbaa !7
  %arrayidx83.i656 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 0
  store double %400, double* %arrayidx83.i656, align 16, !tbaa !7
  %arrayidx85.i657 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 1
  %401 = load double, double* %arrayidx85.i657, align 8, !tbaa !7
  %arrayidx87.i658 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 1
  store double %401, double* %arrayidx87.i658, align 8, !tbaa !7
  %arrayidx89.i659 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 2
  %402 = load double, double* %arrayidx89.i659, align 8, !tbaa !7
  %arrayidx91.i660 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 2
  store double %402, double* %arrayidx91.i660, align 16, !tbaa !7
  %arrayidx93.i661 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 3
  %403 = load double, double* %arrayidx93.i661, align 8, !tbaa !7
  %arrayidx95.i662 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 3
  store double %403, double* %arrayidx95.i662, align 8, !tbaa !7
  %arrayidx97.i663 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 4
  %404 = load double, double* %arrayidx97.i663, align 8, !tbaa !7
  %arrayidx99.i664 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 4
  store double %404, double* %arrayidx99.i664, align 16, !tbaa !7
  %arrayidx1.i565 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 0
  %405 = load double, double* %arrayidx1.i565, align 8, !tbaa !7
  store double %405, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i567 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 1
  %406 = load double, double* %arrayidx5.i567, align 8, !tbaa !7
  store double %406, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i569 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 2
  %407 = load double, double* %arrayidx9.i569, align 8, !tbaa !7
  store double %407, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i571 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 3
  %408 = load double, double* %arrayidx13.i571, align 8, !tbaa !7
  store double %408, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i573 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 4
  %409 = load double, double* %arrayidx17.i573, align 8, !tbaa !7
  store double %409, double* %arrayidx19.i, align 16, !tbaa !7
  %arrayidx21.i575 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 0
  %410 = load double, double* %arrayidx21.i575, align 8, !tbaa !7
  store double %410, double* %arrayidx23.i, align 8, !tbaa !7
  %arrayidx25.i577 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 1
  %411 = load double, double* %arrayidx25.i577, align 8, !tbaa !7
  store double %411, double* %arrayidx27.i, align 16, !tbaa !7
  %arrayidx29.i579 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 2
  %412 = load double, double* %arrayidx29.i579, align 8, !tbaa !7
  store double %412, double* %arrayidx31.i, align 8, !tbaa !7
  %arrayidx33.i581 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 3
  %413 = load double, double* %arrayidx33.i581, align 8, !tbaa !7
  store double %413, double* %arrayidx35.i, align 16, !tbaa !7
  %arrayidx37.i583 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 4
  %414 = load double, double* %arrayidx37.i583, align 8, !tbaa !7
  store double %414, double* %arrayidx39.i, align 8, !tbaa !7
  %arrayidx41.i585 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 0
  %415 = load double, double* %arrayidx41.i585, align 8, !tbaa !7
  store double %415, double* %arrayidx43.i, align 16, !tbaa !7
  %arrayidx45.i587 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 1
  %416 = load double, double* %arrayidx45.i587, align 8, !tbaa !7
  store double %416, double* %arrayidx47.i, align 8, !tbaa !7
  %arrayidx49.i589 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 2
  %417 = load double, double* %arrayidx49.i589, align 8, !tbaa !7
  store double %417, double* %arrayidx51.i, align 16, !tbaa !7
  %arrayidx53.i591 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 3
  %418 = load double, double* %arrayidx53.i591, align 8, !tbaa !7
  store double %418, double* %arrayidx55.i, align 8, !tbaa !7
  %arrayidx57.i593 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 4
  %419 = load double, double* %arrayidx57.i593, align 8, !tbaa !7
  store double %419, double* %arrayidx59.i, align 16, !tbaa !7
  %arrayidx61.i595 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 0
  %420 = load double, double* %arrayidx61.i595, align 8, !tbaa !7
  store double %420, double* %arrayidx63.i, align 8, !tbaa !7
  %arrayidx65.i597 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 1
  %421 = load double, double* %arrayidx65.i597, align 8, !tbaa !7
  store double %421, double* %arrayidx67.i, align 16, !tbaa !7
  %arrayidx69.i599 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 2
  %422 = load double, double* %arrayidx69.i599, align 8, !tbaa !7
  store double %422, double* %arrayidx71.i, align 8, !tbaa !7
  %arrayidx73.i601 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 3
  %423 = load double, double* %arrayidx73.i601, align 8, !tbaa !7
  store double %423, double* %arrayidx75.i, align 16, !tbaa !7
  %arrayidx77.i603 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 4
  %424 = load double, double* %arrayidx77.i603, align 8, !tbaa !7
  store double %424, double* %arrayidx79.i, align 8, !tbaa !7
  %arrayidx81.i605 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 0
  %425 = load double, double* %arrayidx81.i605, align 8, !tbaa !7
  store double %425, double* %arrayidx83.i, align 16, !tbaa !7
  %arrayidx85.i607 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 1
  %426 = load double, double* %arrayidx85.i607, align 8, !tbaa !7
  store double %426, double* %arrayidx87.i, align 8, !tbaa !7
  %arrayidx89.i609 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 2
  %427 = load double, double* %arrayidx89.i609, align 8, !tbaa !7
  store double %427, double* %arrayidx91.i, align 16, !tbaa !7
  %arrayidx93.i611 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 3
  %428 = load double, double* %arrayidx93.i611, align 8, !tbaa !7
  store double %428, double* %arrayidx95.i, align 8, !tbaa !7
  %arrayidx97.i613 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 4
  %429 = load double, double* %arrayidx97.i613, align 8, !tbaa !7
  store double %429, double* %arrayidx99.i, align 16, !tbaa !7
  %arrayidx1.i515 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 0
  %430 = load double, double* %arrayidx1.i515, align 8, !tbaa !7
  store double %430, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i517 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 1
  %431 = load double, double* %arrayidx5.i517, align 8, !tbaa !7
  store double %431, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i519 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 2
  %432 = load double, double* %arrayidx9.i519, align 8, !tbaa !7
  store double %432, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i521 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 3
  %433 = load double, double* %arrayidx13.i521, align 8, !tbaa !7
  store double %433, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i523 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 4
  %434 = load double, double* %arrayidx17.i523, align 8, !tbaa !7
  store double %434, double* %arrayidx19.i430, align 16, !tbaa !7
  %arrayidx21.i525 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 0
  %435 = load double, double* %arrayidx21.i525, align 8, !tbaa !7
  store double %435, double* %arrayidx23.i432, align 8, !tbaa !7
  %arrayidx25.i527 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 1
  %436 = load double, double* %arrayidx25.i527, align 8, !tbaa !7
  store double %436, double* %arrayidx27.i434, align 16, !tbaa !7
  %arrayidx29.i529 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 2
  %437 = load double, double* %arrayidx29.i529, align 8, !tbaa !7
  store double %437, double* %arrayidx31.i436, align 8, !tbaa !7
  %arrayidx33.i531 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 3
  %438 = load double, double* %arrayidx33.i531, align 8, !tbaa !7
  store double %438, double* %arrayidx35.i438, align 16, !tbaa !7
  %arrayidx37.i533 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 4
  %439 = load double, double* %arrayidx37.i533, align 8, !tbaa !7
  store double %439, double* %arrayidx39.i440, align 8, !tbaa !7
  %arrayidx41.i535 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 0
  %440 = load double, double* %arrayidx41.i535, align 8, !tbaa !7
  store double %440, double* %arrayidx43.i442, align 16, !tbaa !7
  %arrayidx45.i537 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 1
  %441 = load double, double* %arrayidx45.i537, align 8, !tbaa !7
  store double %441, double* %arrayidx47.i444, align 8, !tbaa !7
  %arrayidx49.i539 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 2
  %442 = load double, double* %arrayidx49.i539, align 8, !tbaa !7
  store double %442, double* %arrayidx51.i446, align 16, !tbaa !7
  %arrayidx53.i541 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 3
  %443 = load double, double* %arrayidx53.i541, align 8, !tbaa !7
  store double %443, double* %arrayidx55.i448, align 8, !tbaa !7
  %arrayidx57.i543 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 4
  %444 = load double, double* %arrayidx57.i543, align 8, !tbaa !7
  store double %444, double* %arrayidx59.i450, align 16, !tbaa !7
  %arrayidx61.i545 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 0
  %445 = load double, double* %arrayidx61.i545, align 8, !tbaa !7
  store double %445, double* %arrayidx63.i452, align 8, !tbaa !7
  %arrayidx65.i547 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 1
  %446 = load double, double* %arrayidx65.i547, align 8, !tbaa !7
  store double %446, double* %arrayidx67.i454, align 16, !tbaa !7
  %arrayidx69.i549 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 2
  %447 = load double, double* %arrayidx69.i549, align 8, !tbaa !7
  store double %447, double* %arrayidx71.i456, align 8, !tbaa !7
  %arrayidx73.i551 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 3
  %448 = load double, double* %arrayidx73.i551, align 8, !tbaa !7
  store double %448, double* %arrayidx75.i458, align 16, !tbaa !7
  %arrayidx77.i553 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 4
  %449 = load double, double* %arrayidx77.i553, align 8, !tbaa !7
  store double %449, double* %arrayidx79.i460, align 8, !tbaa !7
  %arrayidx81.i555 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 0
  %450 = load double, double* %arrayidx81.i555, align 8, !tbaa !7
  store double %450, double* %arrayidx83.i462, align 16, !tbaa !7
  %arrayidx85.i557 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 1
  %451 = load double, double* %arrayidx85.i557, align 8, !tbaa !7
  store double %451, double* %arrayidx87.i464, align 8, !tbaa !7
  %arrayidx89.i559 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 2
  %452 = load double, double* %arrayidx89.i559, align 8, !tbaa !7
  store double %452, double* %arrayidx91.i466, align 16, !tbaa !7
  %arrayidx93.i561 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 3
  %453 = load double, double* %arrayidx93.i561, align 8, !tbaa !7
  store double %453, double* %arrayidx95.i468, align 8, !tbaa !7
  %arrayidx97.i563 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 4
  %454 = load double, double* %arrayidx97.i563, align 8, !tbaa !7
  store double %454, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay132 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom111, i64 %idxprom28, i64 0
  %455 = load double, double* %arraydecay132, align 8, !tbaa !7
  %arrayidx2.i507 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom111, i64 %idxprom28, i64 1
  %456 = load double, double* %arrayidx2.i507, align 8, !tbaa !7
  %arrayidx4.i509 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom111, i64 %idxprom28, i64 2
  %457 = load double, double* %arrayidx4.i509, align 8, !tbaa !7
  %arrayidx6.i511 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom111, i64 %idxprom28, i64 3
  %458 = load double, double* %arrayidx6.i511, align 8, !tbaa !7
  %arrayidx8.i513 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %idxprom111, i64 %idxprom28, i64 4
  %459 = load double, double* %arrayidx8.i513, align 8, !tbaa !7
  %neg.i = fneg double %380
  %460 = call double @llvm.fmuladd.f64(double %neg.i, double %354, double %455) #7
  %neg7.i = fneg double %385
  %461 = call double @llvm.fmuladd.f64(double %neg7.i, double %353, double %460) #7
  %neg11.i = fneg double %390
  %462 = call double @llvm.fmuladd.f64(double %neg11.i, double %352, double %461) #7
  %neg15.i = fneg double %395
  %463 = call double @llvm.fmuladd.f64(double %neg15.i, double %351, double %462) #7
  %neg19.i = fneg double %400
  %464 = call double @llvm.fmuladd.f64(double %neg19.i, double %350, double %463) #7
  store double %464, double* %arraydecay24, align 16, !tbaa !7
  %neg25.i = fneg double %381
  %465 = call double @llvm.fmuladd.f64(double %neg25.i, double %354, double %456) #7
  %neg29.i = fneg double %386
  %466 = call double @llvm.fmuladd.f64(double %neg29.i, double %353, double %465) #7
  %neg33.i = fneg double %391
  %467 = call double @llvm.fmuladd.f64(double %neg33.i, double %352, double %466) #7
  %neg37.i = fneg double %396
  %468 = call double @llvm.fmuladd.f64(double %neg37.i, double %351, double %467) #7
  %neg41.i = fneg double %401
  %469 = call double @llvm.fmuladd.f64(double %neg41.i, double %350, double %468) #7
  store double %469, double* %arrayidx3.i472, align 8, !tbaa !7
  %neg47.i = fneg double %382
  %470 = call double @llvm.fmuladd.f64(double %neg47.i, double %354, double %457) #7
  %neg51.i = fneg double %387
  %471 = call double @llvm.fmuladd.f64(double %neg51.i, double %353, double %470) #7
  %neg55.i = fneg double %392
  %472 = call double @llvm.fmuladd.f64(double %neg55.i, double %352, double %471) #7
  %neg59.i = fneg double %397
  %473 = call double @llvm.fmuladd.f64(double %neg59.i, double %351, double %472) #7
  %neg63.i = fneg double %402
  %474 = call double @llvm.fmuladd.f64(double %neg63.i, double %350, double %473) #7
  store double %474, double* %arrayidx5.i474, align 16, !tbaa !7
  %neg69.i = fneg double %383
  %475 = call double @llvm.fmuladd.f64(double %neg69.i, double %354, double %458) #7
  %neg73.i = fneg double %388
  %476 = call double @llvm.fmuladd.f64(double %neg73.i, double %353, double %475) #7
  %neg77.i = fneg double %393
  %477 = call double @llvm.fmuladd.f64(double %neg77.i, double %352, double %476) #7
  %neg81.i = fneg double %398
  %478 = call double @llvm.fmuladd.f64(double %neg81.i, double %351, double %477) #7
  %neg85.i = fneg double %403
  %479 = call double @llvm.fmuladd.f64(double %neg85.i, double %350, double %478) #7
  store double %479, double* %arrayidx7.i476, align 8, !tbaa !7
  %neg91.i = fneg double %384
  %480 = call double @llvm.fmuladd.f64(double %neg91.i, double %354, double %459) #7
  %neg95.i = fneg double %389
  %481 = call double @llvm.fmuladd.f64(double %neg95.i, double %353, double %480) #7
  %neg99.i = fneg double %394
  %482 = call double @llvm.fmuladd.f64(double %neg99.i, double %352, double %481) #7
  %neg103.i = fneg double %399
  %483 = call double @llvm.fmuladd.f64(double %neg103.i, double %351, double %482) #7
  %neg107.i = fneg double %404
  %484 = call double @llvm.fmuladd.f64(double %neg107.i, double %350, double %483) #7
  store double %484, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_matmul_sub([5 x double]* nonnull %arraydecay110, [5 x double]* nonnull %arraydecay106, [5 x double]* nonnull %arraydecay)
  call void @p_binvrhs([5 x double]* nonnull %arraydecay, double* nonnull %arraydecay24)
  %485 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %485, double* %arrayidx1.i565, align 8, !tbaa !7
  %486 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %486, double* %arrayidx5.i567, align 8, !tbaa !7
  %487 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %487, double* %arrayidx9.i569, align 8, !tbaa !7
  %488 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %488, double* %arrayidx13.i571, align 8, !tbaa !7
  %489 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %489, double* %arrayidx17.i573, align 8, !tbaa !7
  %490 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %490, double* %arrayidx21.i575, align 8, !tbaa !7
  %491 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %491, double* %arrayidx25.i577, align 8, !tbaa !7
  %492 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %492, double* %arrayidx29.i579, align 8, !tbaa !7
  %493 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %493, double* %arrayidx33.i581, align 8, !tbaa !7
  %494 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %494, double* %arrayidx37.i583, align 8, !tbaa !7
  %495 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %495, double* %arrayidx41.i585, align 8, !tbaa !7
  %496 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %496, double* %arrayidx45.i587, align 8, !tbaa !7
  %497 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %497, double* %arrayidx49.i589, align 8, !tbaa !7
  %498 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %498, double* %arrayidx53.i591, align 8, !tbaa !7
  %499 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %499, double* %arrayidx57.i593, align 8, !tbaa !7
  %500 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %500, double* %arrayidx61.i595, align 8, !tbaa !7
  %501 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %501, double* %arrayidx65.i597, align 8, !tbaa !7
  %502 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %502, double* %arrayidx69.i599, align 8, !tbaa !7
  %503 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %503, double* %arrayidx73.i601, align 8, !tbaa !7
  %504 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %504, double* %arrayidx77.i603, align 8, !tbaa !7
  %505 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %505, double* %arrayidx81.i605, align 8, !tbaa !7
  %506 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %506, double* %arrayidx85.i607, align 8, !tbaa !7
  %507 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %507, double* %arrayidx89.i609, align 8, !tbaa !7
  %508 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %508, double* %arrayidx93.i611, align 8, !tbaa !7
  %509 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %509, double* %arrayidx97.i613, align 8, !tbaa !7
  %510 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %510, double* %arrayidx1.i515, align 8, !tbaa !7
  %511 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %511, double* %arrayidx5.i517, align 8, !tbaa !7
  %512 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %512, double* %arrayidx9.i519, align 8, !tbaa !7
  %513 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %513, double* %arrayidx13.i521, align 8, !tbaa !7
  %514 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %514, double* %arrayidx17.i523, align 8, !tbaa !7
  %515 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %515, double* %arrayidx21.i525, align 8, !tbaa !7
  %516 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %516, double* %arrayidx25.i527, align 8, !tbaa !7
  %517 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %517, double* %arrayidx29.i529, align 8, !tbaa !7
  %518 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %518, double* %arrayidx33.i531, align 8, !tbaa !7
  %519 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %519, double* %arrayidx37.i533, align 8, !tbaa !7
  %520 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %520, double* %arrayidx41.i535, align 8, !tbaa !7
  %521 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %521, double* %arrayidx45.i537, align 8, !tbaa !7
  %522 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %522, double* %arrayidx49.i539, align 8, !tbaa !7
  %523 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %523, double* %arrayidx53.i541, align 8, !tbaa !7
  %524 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %524, double* %arrayidx57.i543, align 8, !tbaa !7
  %525 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %525, double* %arrayidx61.i545, align 8, !tbaa !7
  %526 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %526, double* %arrayidx65.i547, align 8, !tbaa !7
  %527 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %527, double* %arrayidx69.i549, align 8, !tbaa !7
  %528 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %528, double* %arrayidx73.i551, align 8, !tbaa !7
  %529 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %529, double* %arrayidx77.i553, align 8, !tbaa !7
  %530 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %530, double* %arrayidx81.i555, align 8, !tbaa !7
  %531 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %531, double* %arrayidx85.i557, align 8, !tbaa !7
  %532 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %532, double* %arrayidx89.i559, align 8, !tbaa !7
  %533 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %533, double* %arrayidx93.i561, align 8, !tbaa !7
  %534 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %534, double* %arrayidx97.i563, align 8, !tbaa !7
  %535 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %535, double* %arraydecay132, align 8, !tbaa !7
  %536 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %536, double* %arrayidx2.i507, align 8, !tbaa !7
  %537 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %537, double* %arrayidx4.i509, align 8, !tbaa !7
  %538 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %538, double* %arrayidx6.i511, align 8, !tbaa !7
  %539 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %539, double* %arrayidx8.i513, align 8, !tbaa !7
  %cmp1611215 = icmp sgt i32 %gp1, 1
  br i1 %cmp1611215, label %for.cond164.preheader.preheader, label %cleanup

for.cond164.preheader.preheader:                  ; preds = %for.end
  %540 = add nsw i32 %gp1, -2
  %541 = sext i32 %540 to i64
  %arrayidx177 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  %arrayidx177.1 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  %arrayidx177.2 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  %arrayidx177.3 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  %arrayidx177.4 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  br label %for.cond164.preheader

for.cond164.preheader:                            ; preds = %for.cond164.preheader.preheader, %for.cond164.preheader
  %542 = phi double [ %539, %for.cond164.preheader.preheader ], [ %601, %for.cond164.preheader ]
  %543 = phi double [ %538, %for.cond164.preheader.preheader ], [ %590, %for.cond164.preheader ]
  %544 = phi double [ %537, %for.cond164.preheader.preheader ], [ %579, %for.cond164.preheader ]
  %545 = phi double [ %536, %for.cond164.preheader.preheader ], [ %568, %for.cond164.preheader ]
  %546 = phi double [ %535, %for.cond164.preheader.preheader ], [ %557, %for.cond164.preheader ]
  %indvars.iv1220 = phi i64 [ %541, %for.cond164.preheader.preheader ], [ %indvars.iv.next1221, %for.cond164.preheader ]
  %arrayidx175 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1220, i64 %idxprom28, i64 0
  %547 = load double, double* %arrayidx175, align 8, !tbaa !7
  %arrayidx190 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 0
  %548 = load double, double* %arrayidx190, align 8, !tbaa !7
  %neg = fneg double %548
  %549 = call double @llvm.fmuladd.f64(double %neg, double %546, double %547)
  %arrayidx190.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 0
  %550 = load double, double* %arrayidx190.1, align 8, !tbaa !7
  %neg.1 = fneg double %550
  %551 = call double @llvm.fmuladd.f64(double %neg.1, double %545, double %549)
  %arrayidx190.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 0
  %552 = load double, double* %arrayidx190.2, align 8, !tbaa !7
  %neg.2 = fneg double %552
  %553 = call double @llvm.fmuladd.f64(double %neg.2, double %544, double %551)
  %arrayidx190.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 0
  %554 = load double, double* %arrayidx190.3, align 8, !tbaa !7
  %neg.3 = fneg double %554
  %555 = call double @llvm.fmuladd.f64(double %neg.3, double %543, double %553)
  %arrayidx190.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 0
  %556 = load double, double* %arrayidx190.4, align 8, !tbaa !7
  %neg.4 = fneg double %556
  %557 = call double @llvm.fmuladd.f64(double %neg.4, double %542, double %555)
  store double %557, double* %arrayidx175, align 8, !tbaa !7
  %arrayidx175.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1220, i64 %idxprom28, i64 1
  %558 = load double, double* %arrayidx175.1, align 8, !tbaa !7
  %arrayidx190.11312 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 1
  %559 = load double, double* %arrayidx190.11312, align 8, !tbaa !7
  %neg.11313 = fneg double %559
  %560 = call double @llvm.fmuladd.f64(double %neg.11313, double %546, double %558)
  %arrayidx190.1.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 1
  %561 = load double, double* %arrayidx190.1.1, align 8, !tbaa !7
  %neg.1.1 = fneg double %561
  %562 = call double @llvm.fmuladd.f64(double %neg.1.1, double %545, double %560)
  %arrayidx190.2.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 1
  %563 = load double, double* %arrayidx190.2.1, align 8, !tbaa !7
  %neg.2.1 = fneg double %563
  %564 = call double @llvm.fmuladd.f64(double %neg.2.1, double %544, double %562)
  %arrayidx190.3.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 1
  %565 = load double, double* %arrayidx190.3.1, align 8, !tbaa !7
  %neg.3.1 = fneg double %565
  %566 = call double @llvm.fmuladd.f64(double %neg.3.1, double %543, double %564)
  %arrayidx190.4.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 1
  %567 = load double, double* %arrayidx190.4.1, align 8, !tbaa !7
  %neg.4.1 = fneg double %567
  %568 = call double @llvm.fmuladd.f64(double %neg.4.1, double %542, double %566)
  store double %568, double* %arrayidx175.1, align 8, !tbaa !7
  %arrayidx175.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1220, i64 %idxprom28, i64 2
  %569 = load double, double* %arrayidx175.2, align 8, !tbaa !7
  %arrayidx190.21314 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 2
  %570 = load double, double* %arrayidx190.21314, align 8, !tbaa !7
  %neg.21315 = fneg double %570
  %571 = call double @llvm.fmuladd.f64(double %neg.21315, double %546, double %569)
  %arrayidx190.1.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 2
  %572 = load double, double* %arrayidx190.1.2, align 8, !tbaa !7
  %neg.1.2 = fneg double %572
  %573 = call double @llvm.fmuladd.f64(double %neg.1.2, double %545, double %571)
  %arrayidx190.2.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 2
  %574 = load double, double* %arrayidx190.2.2, align 8, !tbaa !7
  %neg.2.2 = fneg double %574
  %575 = call double @llvm.fmuladd.f64(double %neg.2.2, double %544, double %573)
  %arrayidx190.3.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 2
  %576 = load double, double* %arrayidx190.3.2, align 8, !tbaa !7
  %neg.3.2 = fneg double %576
  %577 = call double @llvm.fmuladd.f64(double %neg.3.2, double %543, double %575)
  %arrayidx190.4.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 2
  %578 = load double, double* %arrayidx190.4.2, align 8, !tbaa !7
  %neg.4.2 = fneg double %578
  %579 = call double @llvm.fmuladd.f64(double %neg.4.2, double %542, double %577)
  store double %579, double* %arrayidx175.2, align 8, !tbaa !7
  %arrayidx175.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1220, i64 %idxprom28, i64 3
  %580 = load double, double* %arrayidx175.3, align 8, !tbaa !7
  %arrayidx190.31316 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 3
  %581 = load double, double* %arrayidx190.31316, align 8, !tbaa !7
  %neg.31317 = fneg double %581
  %582 = call double @llvm.fmuladd.f64(double %neg.31317, double %546, double %580)
  %arrayidx190.1.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 3
  %583 = load double, double* %arrayidx190.1.3, align 8, !tbaa !7
  %neg.1.3 = fneg double %583
  %584 = call double @llvm.fmuladd.f64(double %neg.1.3, double %545, double %582)
  %arrayidx190.2.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 3
  %585 = load double, double* %arrayidx190.2.3, align 8, !tbaa !7
  %neg.2.3 = fneg double %585
  %586 = call double @llvm.fmuladd.f64(double %neg.2.3, double %544, double %584)
  %arrayidx190.3.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 3
  %587 = load double, double* %arrayidx190.3.3, align 8, !tbaa !7
  %neg.3.3 = fneg double %587
  %588 = call double @llvm.fmuladd.f64(double %neg.3.3, double %543, double %586)
  %arrayidx190.4.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 3
  %589 = load double, double* %arrayidx190.4.3, align 8, !tbaa !7
  %neg.4.3 = fneg double %589
  %590 = call double @llvm.fmuladd.f64(double %neg.4.3, double %542, double %588)
  store double %590, double* %arrayidx175.3, align 8, !tbaa !7
  %arrayidx175.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom25, i64 %indvars.iv1220, i64 %idxprom28, i64 4
  %591 = load double, double* %arrayidx175.4, align 8, !tbaa !7
  %arrayidx190.41318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 4
  %592 = load double, double* %arrayidx190.41318, align 8, !tbaa !7
  %neg.41319 = fneg double %592
  %593 = call double @llvm.fmuladd.f64(double %neg.41319, double %546, double %591)
  %arrayidx190.1.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 4
  %594 = load double, double* %arrayidx190.1.4, align 8, !tbaa !7
  %neg.1.4 = fneg double %594
  %595 = call double @llvm.fmuladd.f64(double %neg.1.4, double %545, double %593)
  %arrayidx190.2.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 4
  %596 = load double, double* %arrayidx190.2.4, align 8, !tbaa !7
  %neg.2.4 = fneg double %596
  %597 = call double @llvm.fmuladd.f64(double %neg.2.4, double %544, double %595)
  %arrayidx190.3.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 4
  %598 = load double, double* %arrayidx190.3.4, align 8, !tbaa !7
  %neg.3.4 = fneg double %598
  %599 = call double @llvm.fmuladd.f64(double %neg.3.4, double %543, double %597)
  %arrayidx190.4.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 4
  %600 = load double, double* %arrayidx190.4.4, align 8, !tbaa !7
  %neg.4.4 = fneg double %600
  %601 = call double @llvm.fmuladd.f64(double %neg.4.4, double %542, double %599)
  store double %601, double* %arrayidx175.4, align 8, !tbaa !7
  %indvars.iv.next1221 = add nsw i64 %indvars.iv1220, -1
  %cmp161 = icmp sgt i64 %indvars.iv1220, 0
  br i1 %cmp161, label %for.cond164.preheader, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.cond164.preheader
  store double %557, double* %arrayidx177, align 16, !tbaa !7
  store double %568, double* %arrayidx177.1, align 8, !tbaa !7
  store double %579, double* %arrayidx177.2, align 16, !tbaa !7
  store double %590, double* %arrayidx177.3, align 8, !tbaa !7
  store double %601, double* %arrayidx177.4, align 16, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %entry, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @z_solve1(double* nocapture readonly %g_qs, double* nocapture readonly %g_square, double* nocapture readonly %g_u, double* %g_fjac, double* %g_njac, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !32 !kernel_arg_access_qual !33 !kernel_arg_type !34 !kernel_arg_base_type !34 !kernel_arg_type_qual !35 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %sub = add nsw i32 %gp1, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv5 = trunc i64 %call4 to i32
  %sub7 = add nsw i32 %gp0, -2
  %cmp8 = icmp sle i32 %conv3, %sub7
  %cmp11.not = icmp slt i32 %conv5, %gp2
  %or.cond = and i1 %cmp8, %cmp11.not
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast double* %g_qs to [163 x [163 x double]]*
  %3 = bitcast double* %g_square to [163 x [163 x double]]*
  %4 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %mul = mul nsw i32 %sub7, %0
  %add16 = add nsw i32 %mul, %1
  %mul19 = mul i32 %add16, 4075
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds double, double* %g_fjac, i64 %idxprom
  %5 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx21 = getelementptr inbounds double, double* %g_njac, i64 %idxprom
  %6 = bitcast double* %arrayidx21 to [5 x [5 x double]]*
  %sext = shl i64 %call4, 32
  %idxprom22 = ashr exact i64 %sext, 32
  %idxprom24 = sext i32 %conv to i64
  %idxprom26 = sext i32 %conv3 to i64
  %arrayidx28 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 0
  %7 = load double, double* %arrayidx28, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %7
  %mul29 = fmul double %div, %div
  %mul30 = fmul double %div, %mul29
  %arrayidx45 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 1
  %8 = load double, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 2
  %9 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 3
  %10 = load double, double* %arrayidx61, align 8, !tbaa !7
  %arrayidx69 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 4
  %11 = load double, double* %arrayidx69, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx74, align 8, !tbaa !7
  %arrayidx78 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx78, align 8, !tbaa !7
  %arrayidx82 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx82, align 8, !tbaa !7
  %arrayidx86 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 0
  store double 1.000000e+00, double* %arrayidx86, align 8, !tbaa !7
  %arrayidx90 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx90, align 8, !tbaa !7
  %mul93 = fmul double %8, %10
  %fneg = fneg double %mul93
  %mul94 = fmul double %mul29, %fneg
  %arrayidx98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 1
  store double %mul94, double* %arrayidx98, align 8, !tbaa !7
  %mul100 = fmul double %div, %10
  %arrayidx104 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 1
  store double %mul100, double* %arrayidx104, align 8, !tbaa !7
  %arrayidx108 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx108, align 8, !tbaa !7
  %mul110 = fmul double %8, %div
  %arrayidx114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 1
  store double %mul110, double* %arrayidx114, align 8, !tbaa !7
  %arrayidx118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx118, align 8, !tbaa !7
  %mul121 = fmul double %9, %10
  %fneg122 = fneg double %mul121
  %mul123 = fmul double %mul29, %fneg122
  %arrayidx127 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 2
  store double %mul123, double* %arrayidx127, align 8, !tbaa !7
  %arrayidx131 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx131, align 8, !tbaa !7
  %arrayidx137 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 2
  store double %mul100, double* %arrayidx137, align 8, !tbaa !7
  %mul139 = fmul double %div, %9
  %arrayidx143 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 2
  store double %mul139, double* %arrayidx143, align 8, !tbaa !7
  %arrayidx147 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx147, align 8, !tbaa !7
  %mul150 = fmul double %10, %10
  %12 = fneg double %mul150
  %fneg152 = fmul double %mul29, %12
  %arrayidx158 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %2, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %13 = load double, double* %arrayidx158, align 8, !tbaa !7
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 4.000000e-01, double %fneg152)
  %arrayidx163 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 3
  store double %14, double* %arrayidx163, align 8, !tbaa !7
  %mul165 = fmul double %8, -4.000000e-01
  %mul166 = fmul double %div, %mul165
  %arrayidx170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 3
  store double %mul166, double* %arrayidx170, align 8, !tbaa !7
  %mul172 = fmul double %9, -4.000000e-01
  %mul173 = fmul double %div, %mul172
  %arrayidx177 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 3
  store double %mul173, double* %arrayidx177, align 8, !tbaa !7
  %mul179 = fmul double %10, 1.600000e+00
  %mul180 = fmul double %div, %mul179
  %arrayidx184 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 3
  store double %mul180, double* %arrayidx184, align 8, !tbaa !7
  %arrayidx188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 3
  store double 4.000000e-01, double* %arrayidx188, align 8, !tbaa !7
  %arrayidx194 = getelementptr inbounds [163 x [163 x double]], [163 x [163 x double]]* %3, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %15 = load double, double* %arrayidx194, align 8, !tbaa !7
  %neg = fmul double %11, -1.400000e+00
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 8.000000e-01, double %neg)
  %mul199 = fmul double %10, %16
  %mul200 = fmul double %mul29, %mul199
  %arrayidx204 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 4
  store double %mul200, double* %arrayidx204, align 8, !tbaa !7
  %mul208 = fmul double %mul93, -4.000000e-01
  %mul209 = fmul double %mul29, %mul208
  %arrayidx213 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 4
  store double %mul209, double* %arrayidx213, align 8, !tbaa !7
  %mul217 = fmul double %mul121, -4.000000e-01
  %mul218 = fmul double %mul29, %mul217
  %arrayidx222 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 4
  store double %mul218, double* %arrayidx222, align 8, !tbaa !7
  %mul224 = fmul double %div, %11
  %17 = load double, double* %arrayidx158, align 8, !tbaa !7
  %18 = tail call double @llvm.fmuladd.f64(double %mul150, double %mul29, double %17)
  %neg237 = fmul double %18, -4.000000e-01
  %19 = tail call double @llvm.fmuladd.f64(double %mul224, double 1.400000e+00, double %neg237)
  %arrayidx241 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 4
  store double %19, double* %arrayidx241, align 8, !tbaa !7
  %mul243 = fmul double %10, 1.400000e+00
  %mul244 = fmul double %div, %mul243
  %arrayidx248 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 4
  store double %mul244, double* %arrayidx248, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx252, align 8, !tbaa !7
  %arrayidx256 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx256, align 8, !tbaa !7
  %arrayidx260 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx260, align 8, !tbaa !7
  %arrayidx264 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx264, align 8, !tbaa !7
  %arrayidx268 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx268, align 8, !tbaa !7
  %mul269 = fmul double %mul29, -1.000000e-01
  %mul271 = fmul double %8, %mul269
  %arrayidx275 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 1
  store double %mul271, double* %arrayidx275, align 8, !tbaa !7
  %mul276 = fmul double %div, 1.000000e-01
  %arrayidx280 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 1
  store double %mul276, double* %arrayidx280, align 8, !tbaa !7
  %arrayidx284 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx284, align 8, !tbaa !7
  %arrayidx288 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx288, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx292, align 8, !tbaa !7
  %mul295 = fmul double %9, %mul269
  %arrayidx299 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 2
  store double %mul295, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx303 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx303, align 8, !tbaa !7
  %arrayidx308 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 2
  store double %mul276, double* %arrayidx308, align 8, !tbaa !7
  %arrayidx312 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx312, align 8, !tbaa !7
  %arrayidx316 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx316, align 8, !tbaa !7
  %mul317 = fmul double %mul29, 0xBFC1111111111111
  %mul319 = fmul double %mul317, %10
  %arrayidx323 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 3
  store double %mul319, double* %arrayidx323, align 8, !tbaa !7
  %arrayidx327 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx327, align 8, !tbaa !7
  %arrayidx331 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx331, align 8, !tbaa !7
  %mul332 = fmul double %div, 0x3FC1111111111111
  %arrayidx336 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 3
  store double %mul332, double* %arrayidx336, align 8, !tbaa !7
  %arrayidx340 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx340, align 8, !tbaa !7
  %mul341 = fmul double %mul30, 0x3FB89374BC6A7EF8
  %mul344 = fmul double %8, %8
  %mul349 = fmul double %9, %9
  %neg351 = fmul double %mul349, %mul341
  %20 = tail call double @llvm.fmuladd.f64(double %mul341, double %mul344, double %neg351)
  %neg357 = fmul double %mul30, 0x3FB00AEC33E1F670
  %21 = tail call double @llvm.fmuladd.f64(double %neg357, double %mul150, double %20)
  %neg361 = fmul double %mul29, 0xBFC916872B020C49
  %22 = tail call double @llvm.fmuladd.f64(double %neg361, double %11, double %21)
  %arrayidx365 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 4
  store double %22, double* %arrayidx365, align 8, !tbaa !7
  %mul366 = fmul double %mul29, 0xBFB89374BC6A7EF8
  %mul368 = fmul double %8, %mul366
  %arrayidx372 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 4
  store double %mul368, double* %arrayidx372, align 8, !tbaa !7
  %mul375 = fmul double %9, %mul366
  %arrayidx379 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 4
  store double %mul375, double* %arrayidx379, align 8, !tbaa !7
  %mul380 = fmul double %mul29, 0xBFB00AEC33E1F670
  %mul382 = fmul double %mul380, %10
  %arrayidx386 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 4
  store double %mul382, double* %arrayidx386, align 8, !tbaa !7
  %mul387 = fmul double %div, 0x3FC916872B020C49
  %arrayidx391 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 4
  store double %mul387, double* %arrayidx391, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable writeonly
define dso_local spir_kernel void @z_solve2(double* nocapture %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #5 !kernel_arg_addr_space !19 !kernel_arg_access_qual !20 !kernel_arg_type !21 !kernel_arg_base_type !21 !kernel_arg_type_qual !22 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %sub = add nsw i32 %gp1, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub5 = add nsw i32 %gp0, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call8 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %conv9 = trunc i64 %call8 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  %sub13 = add nsw i32 %gp2, -1
  %spec.select = select i1 %cmp10, i32 %sub13, i32 %conv9
  %mul = mul nsw i32 %sub5, %0
  %add18 = add nsw i32 %mul, %1
  %mul22 = mul i32 %add18, 12225
  %idxprom = sext i32 %mul22 to i64
  %arrayidx = getelementptr inbounds double, double* %g_lhs, i64 %idxprom
  %2 = bitcast double* %arrayidx to [3 x [5 x [5 x double]]]*
  %idxprom29 = sext i32 %spec.select to i64
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %if.end, %for.cond25.preheader
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.cond25.preheader ]
  %arrayidx35 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx42 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !7
  %arrayidx49 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 0
  store double 0.000000e+00, double* %arrayidx49, align 8, !tbaa !7
  %arrayidx35.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx35.1, align 8, !tbaa !7
  %arrayidx42.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx42.1, align 8, !tbaa !7
  %arrayidx49.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 1
  store double 0.000000e+00, double* %arrayidx49.1, align 8, !tbaa !7
  %arrayidx35.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx35.2, align 8, !tbaa !7
  %arrayidx42.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx42.2, align 8, !tbaa !7
  %arrayidx49.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 2
  store double 0.000000e+00, double* %arrayidx49.2, align 8, !tbaa !7
  %arrayidx35.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx35.3, align 8, !tbaa !7
  %arrayidx42.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx42.3, align 8, !tbaa !7
  %arrayidx49.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 3
  store double 0.000000e+00, double* %arrayidx49.3, align 8, !tbaa !7
  %arrayidx35.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx35.4, align 8, !tbaa !7
  %arrayidx42.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx42.4, align 8, !tbaa !7
  %arrayidx49.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvars.iv, i64 4
  store double 0.000000e+00, double* %arrayidx49.4, align 8, !tbaa !7
  %arrayidx56 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvars.iv, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx56, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %cleanup, label %for.cond25.preheader

cleanup:                                          ; preds = %for.cond25.preheader, %entry, %lor.lhs.false
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @z_solve3(double* readonly %g_fjac, double* readonly %g_njac, double* %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !27 !kernel_arg_access_qual !28 !kernel_arg_type !29 !kernel_arg_base_type !29 !kernel_arg_type_qual !30 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %sub = add nsw i32 %gp1, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub8 = add nsw i32 %gp0, -2
  %cmp9 = icmp sgt i32 %conv3, %sub8
  %sub12 = add nsw i32 %gp2, -2
  %cmp13 = icmp sgt i32 %conv6, %sub12
  %or.cond = or i1 %cmp9, %cmp13
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mul = mul nsw i32 %sub8, %0
  %add18 = add nsw i32 %mul, %1
  %mul21 = mul i32 %add18, 4075
  %idxprom = sext i32 %mul21 to i64
  %arrayidx = getelementptr inbounds double, double* %g_fjac, i64 %idxprom
  %3 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx23 = getelementptr inbounds double, double* %g_njac, i64 %idxprom
  %4 = bitcast double* %arrayidx23 to [5 x [5 x double]]*
  %mul27 = mul i32 %add18, 12225
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds double, double* %g_lhs, i64 %idxprom28
  %5 = bitcast double* %arrayidx29 to [3 x [5 x [5 x double]]]*
  %sext = shl i64 %call4, 32
  %idxprom31 = ashr exact i64 %sext, 32
  %arrayidx34 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 0
  %6 = load double, double* %arrayidx34, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 0
  %7 = load double, double* %arrayidx40, align 8, !tbaa !7
  %neg = fmul double %7, 0xC004BC9EECBFB15C
  %8 = tail call double @llvm.fmuladd.f64(double %6, double 0xBF807C84B5DCC63F, double %neg)
  %9 = fadd double %8, 0xC004BC9EECBFB15C
  %idxprom44 = sext i32 %conv6 to i64
  %arrayidx48 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 0
  store double %9, double* %arrayidx48, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 0
  %10 = load double, double* %arrayidx54, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 0
  %11 = load double, double* %arrayidx60, align 8, !tbaa !7
  %neg62 = fmul double %11, 0xC004BC9EECBFB15C
  %12 = tail call double @llvm.fmuladd.f64(double %10, double 0xBF807C84B5DCC63F, double %neg62)
  %arrayidx67 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 0
  store double %12, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 0
  %13 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 0
  %14 = load double, double* %arrayidx79, align 8, !tbaa !7
  %neg81 = fmul double %14, 0xC004BC9EECBFB15C
  %15 = tail call double @llvm.fmuladd.f64(double %13, double 0xBF807C84B5DCC63F, double %neg81)
  %arrayidx86 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 0
  store double %15, double* %arrayidx86, align 8, !tbaa !7
  %arrayidx92 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 0
  %16 = load double, double* %arrayidx92, align 8, !tbaa !7
  %arrayidx98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 0
  %17 = load double, double* %arrayidx98, align 8, !tbaa !7
  %neg100 = fmul double %17, 0xC004BC9EECBFB15C
  %18 = tail call double @llvm.fmuladd.f64(double %16, double 0xBF807C84B5DCC63F, double %neg100)
  %arrayidx105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 0
  store double %18, double* %arrayidx105, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 0
  %19 = load double, double* %arrayidx111, align 8, !tbaa !7
  %arrayidx117 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 0
  %20 = load double, double* %arrayidx117, align 8, !tbaa !7
  %neg119 = fmul double %20, 0xC004BC9EECBFB15C
  %21 = tail call double @llvm.fmuladd.f64(double %19, double 0xBF807C84B5DCC63F, double %neg119)
  %arrayidx124 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 0
  store double %21, double* %arrayidx124, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 1
  %22 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 1
  %23 = load double, double* %arrayidx136, align 8, !tbaa !7
  %neg138 = fmul double %23, 0xC004BC9EECBFB15C
  %24 = tail call double @llvm.fmuladd.f64(double %22, double 0xBF807C84B5DCC63F, double %neg138)
  %arrayidx143 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 1
  store double %24, double* %arrayidx143, align 8, !tbaa !7
  %arrayidx149 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 1
  %25 = load double, double* %arrayidx149, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 1
  %26 = load double, double* %arrayidx155, align 8, !tbaa !7
  %neg157 = fmul double %26, 0xC004BC9EECBFB15C
  %27 = tail call double @llvm.fmuladd.f64(double %25, double 0xBF807C84B5DCC63F, double %neg157)
  %28 = fadd double %27, 0xC004BC9EECBFB15C
  %arrayidx164 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 1
  store double %28, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 1
  %29 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 1
  %30 = load double, double* %arrayidx176, align 8, !tbaa !7
  %neg178 = fmul double %30, 0xC004BC9EECBFB15C
  %31 = tail call double @llvm.fmuladd.f64(double %29, double 0xBF807C84B5DCC63F, double %neg178)
  %arrayidx183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 1
  store double %31, double* %arrayidx183, align 8, !tbaa !7
  %arrayidx189 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 1
  %32 = load double, double* %arrayidx189, align 8, !tbaa !7
  %arrayidx195 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 1
  %33 = load double, double* %arrayidx195, align 8, !tbaa !7
  %neg197 = fmul double %33, 0xC004BC9EECBFB15C
  %34 = tail call double @llvm.fmuladd.f64(double %32, double 0xBF807C84B5DCC63F, double %neg197)
  %arrayidx202 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 1
  store double %34, double* %arrayidx202, align 8, !tbaa !7
  %arrayidx208 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 1
  %35 = load double, double* %arrayidx208, align 8, !tbaa !7
  %arrayidx214 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 1
  %36 = load double, double* %arrayidx214, align 8, !tbaa !7
  %neg216 = fmul double %36, 0xC004BC9EECBFB15C
  %37 = tail call double @llvm.fmuladd.f64(double %35, double 0xBF807C84B5DCC63F, double %neg216)
  %arrayidx221 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 1
  store double %37, double* %arrayidx221, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 2
  %38 = load double, double* %arrayidx227, align 8, !tbaa !7
  %arrayidx233 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 2
  %39 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg235 = fmul double %39, 0xC004BC9EECBFB15C
  %40 = tail call double @llvm.fmuladd.f64(double %38, double 0xBF807C84B5DCC63F, double %neg235)
  %arrayidx240 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 2
  store double %40, double* %arrayidx240, align 8, !tbaa !7
  %arrayidx246 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 2
  %41 = load double, double* %arrayidx246, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 2
  %42 = load double, double* %arrayidx252, align 8, !tbaa !7
  %neg254 = fmul double %42, 0xC004BC9EECBFB15C
  %43 = tail call double @llvm.fmuladd.f64(double %41, double 0xBF807C84B5DCC63F, double %neg254)
  %arrayidx259 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 2
  store double %43, double* %arrayidx259, align 8, !tbaa !7
  %arrayidx265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 2
  %44 = load double, double* %arrayidx265, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 2
  %45 = load double, double* %arrayidx271, align 8, !tbaa !7
  %neg273 = fmul double %45, 0xC004BC9EECBFB15C
  %46 = tail call double @llvm.fmuladd.f64(double %44, double 0xBF807C84B5DCC63F, double %neg273)
  %47 = fadd double %46, 0xC004BC9EECBFB15C
  %arrayidx280 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 2
  store double %47, double* %arrayidx280, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 2
  %48 = load double, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 2
  %49 = load double, double* %arrayidx292, align 8, !tbaa !7
  %neg294 = fmul double %49, 0xC004BC9EECBFB15C
  %50 = tail call double @llvm.fmuladd.f64(double %48, double 0xBF807C84B5DCC63F, double %neg294)
  %arrayidx299 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 2
  store double %50, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx305 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 2
  %51 = load double, double* %arrayidx305, align 8, !tbaa !7
  %arrayidx311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 2
  %52 = load double, double* %arrayidx311, align 8, !tbaa !7
  %neg313 = fmul double %52, 0xC004BC9EECBFB15C
  %53 = tail call double @llvm.fmuladd.f64(double %51, double 0xBF807C84B5DCC63F, double %neg313)
  %arrayidx318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 2
  store double %53, double* %arrayidx318, align 8, !tbaa !7
  %arrayidx324 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 3
  %54 = load double, double* %arrayidx324, align 8, !tbaa !7
  %arrayidx330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 3
  %55 = load double, double* %arrayidx330, align 8, !tbaa !7
  %neg332 = fmul double %55, 0xC004BC9EECBFB15C
  %56 = tail call double @llvm.fmuladd.f64(double %54, double 0xBF807C84B5DCC63F, double %neg332)
  %arrayidx337 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 3
  store double %56, double* %arrayidx337, align 8, !tbaa !7
  %arrayidx343 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 3
  %57 = load double, double* %arrayidx343, align 8, !tbaa !7
  %arrayidx349 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 3
  %58 = load double, double* %arrayidx349, align 8, !tbaa !7
  %neg351 = fmul double %58, 0xC004BC9EECBFB15C
  %59 = tail call double @llvm.fmuladd.f64(double %57, double 0xBF807C84B5DCC63F, double %neg351)
  %arrayidx356 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 3
  store double %59, double* %arrayidx356, align 8, !tbaa !7
  %arrayidx362 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 3
  %60 = load double, double* %arrayidx362, align 8, !tbaa !7
  %arrayidx368 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 3
  %61 = load double, double* %arrayidx368, align 8, !tbaa !7
  %neg370 = fmul double %61, 0xC004BC9EECBFB15C
  %62 = tail call double @llvm.fmuladd.f64(double %60, double 0xBF807C84B5DCC63F, double %neg370)
  %arrayidx375 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 3
  store double %62, double* %arrayidx375, align 8, !tbaa !7
  %arrayidx381 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 3
  %63 = load double, double* %arrayidx381, align 8, !tbaa !7
  %arrayidx387 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 3
  %64 = load double, double* %arrayidx387, align 8, !tbaa !7
  %neg389 = fmul double %64, 0xC004BC9EECBFB15C
  %65 = tail call double @llvm.fmuladd.f64(double %63, double 0xBF807C84B5DCC63F, double %neg389)
  %66 = fadd double %65, 0xC004BC9EECBFB15C
  %arrayidx396 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 3
  store double %66, double* %arrayidx396, align 8, !tbaa !7
  %arrayidx402 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 3
  %67 = load double, double* %arrayidx402, align 8, !tbaa !7
  %arrayidx408 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 3
  %68 = load double, double* %arrayidx408, align 8, !tbaa !7
  %neg410 = fmul double %68, 0xC004BC9EECBFB15C
  %69 = tail call double @llvm.fmuladd.f64(double %67, double 0xBF807C84B5DCC63F, double %neg410)
  %arrayidx415 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 3
  store double %69, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 4
  %70 = load double, double* %arrayidx421, align 8, !tbaa !7
  %arrayidx427 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 4
  %71 = load double, double* %arrayidx427, align 8, !tbaa !7
  %neg429 = fmul double %71, 0xC004BC9EECBFB15C
  %72 = tail call double @llvm.fmuladd.f64(double %70, double 0xBF807C84B5DCC63F, double %neg429)
  %arrayidx434 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 4
  store double %72, double* %arrayidx434, align 8, !tbaa !7
  %arrayidx440 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 4
  %73 = load double, double* %arrayidx440, align 8, !tbaa !7
  %arrayidx446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 4
  %74 = load double, double* %arrayidx446, align 8, !tbaa !7
  %neg448 = fmul double %74, 0xC004BC9EECBFB15C
  %75 = tail call double @llvm.fmuladd.f64(double %73, double 0xBF807C84B5DCC63F, double %neg448)
  %arrayidx453 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 4
  store double %75, double* %arrayidx453, align 8, !tbaa !7
  %arrayidx459 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 4
  %76 = load double, double* %arrayidx459, align 8, !tbaa !7
  %arrayidx465 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 4
  %77 = load double, double* %arrayidx465, align 8, !tbaa !7
  %neg467 = fmul double %77, 0xC004BC9EECBFB15C
  %78 = tail call double @llvm.fmuladd.f64(double %76, double 0xBF807C84B5DCC63F, double %neg467)
  %arrayidx472 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 4
  store double %78, double* %arrayidx472, align 8, !tbaa !7
  %arrayidx478 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 4
  %79 = load double, double* %arrayidx478, align 8, !tbaa !7
  %arrayidx484 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 4
  %80 = load double, double* %arrayidx484, align 8, !tbaa !7
  %neg486 = fmul double %80, 0xC004BC9EECBFB15C
  %81 = tail call double @llvm.fmuladd.f64(double %79, double 0xBF807C84B5DCC63F, double %neg486)
  %arrayidx491 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 4
  store double %81, double* %arrayidx491, align 8, !tbaa !7
  %arrayidx497 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 4
  %82 = load double, double* %arrayidx497, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 4
  %83 = load double, double* %arrayidx503, align 8, !tbaa !7
  %neg505 = fmul double %83, 0xC004BC9EECBFB15C
  %84 = tail call double @llvm.fmuladd.f64(double %82, double 0xBF807C84B5DCC63F, double %neg505)
  %85 = fadd double %84, 0xC004BC9EECBFB15C
  %arrayidx512 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 4
  store double %85, double* %arrayidx512, align 8, !tbaa !7
  %arrayidx517 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 0
  %86 = load double, double* %arrayidx517, align 8, !tbaa !7
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %88 = fadd double %87, 0x4014BC9EECBFB15C
  %arrayidx525 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 0
  store double %88, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx530 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 0
  %89 = load double, double* %arrayidx530, align 8, !tbaa !7
  %mul531 = fmul double %89, 0x4014BC9EECBFB15C
  %arrayidx536 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 0
  store double %mul531, double* %arrayidx536, align 8, !tbaa !7
  %arrayidx541 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 0
  %90 = load double, double* %arrayidx541, align 8, !tbaa !7
  %mul542 = fmul double %90, 0x4014BC9EECBFB15C
  %arrayidx547 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 0
  store double %mul542, double* %arrayidx547, align 8, !tbaa !7
  %arrayidx552 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 0
  %91 = load double, double* %arrayidx552, align 8, !tbaa !7
  %mul553 = fmul double %91, 0x4014BC9EECBFB15C
  %arrayidx558 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 0
  store double %mul553, double* %arrayidx558, align 8, !tbaa !7
  %arrayidx563 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 0
  %92 = load double, double* %arrayidx563, align 8, !tbaa !7
  %mul564 = fmul double %92, 0x4014BC9EECBFB15C
  %arrayidx569 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 0
  store double %mul564, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx574 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 1
  %93 = load double, double* %arrayidx574, align 8, !tbaa !7
  %mul575 = fmul double %93, 0x4014BC9EECBFB15C
  %arrayidx580 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 1
  store double %mul575, double* %arrayidx580, align 8, !tbaa !7
  %arrayidx585 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 1
  %94 = load double, double* %arrayidx585, align 8, !tbaa !7
  %95 = tail call double @llvm.fmuladd.f64(double %94, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %96 = fadd double %95, 0x4014BC9EECBFB15C
  %arrayidx593 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 1
  store double %96, double* %arrayidx593, align 8, !tbaa !7
  %arrayidx598 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 1
  %97 = load double, double* %arrayidx598, align 8, !tbaa !7
  %mul599 = fmul double %97, 0x4014BC9EECBFB15C
  %arrayidx604 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 1
  store double %mul599, double* %arrayidx604, align 8, !tbaa !7
  %arrayidx609 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 1
  %98 = load double, double* %arrayidx609, align 8, !tbaa !7
  %mul610 = fmul double %98, 0x4014BC9EECBFB15C
  %arrayidx615 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 1
  store double %mul610, double* %arrayidx615, align 8, !tbaa !7
  %arrayidx620 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 1
  %99 = load double, double* %arrayidx620, align 8, !tbaa !7
  %mul621 = fmul double %99, 0x4014BC9EECBFB15C
  %arrayidx626 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 1
  store double %mul621, double* %arrayidx626, align 8, !tbaa !7
  %arrayidx631 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 2
  %100 = load double, double* %arrayidx631, align 8, !tbaa !7
  %mul632 = fmul double %100, 0x4014BC9EECBFB15C
  %arrayidx637 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 2
  store double %mul632, double* %arrayidx637, align 8, !tbaa !7
  %arrayidx642 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 2
  %101 = load double, double* %arrayidx642, align 8, !tbaa !7
  %mul643 = fmul double %101, 0x4014BC9EECBFB15C
  %arrayidx648 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 2
  store double %mul643, double* %arrayidx648, align 8, !tbaa !7
  %arrayidx653 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 2
  %102 = load double, double* %arrayidx653, align 8, !tbaa !7
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %104 = fadd double %103, 0x4014BC9EECBFB15C
  %arrayidx661 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 2
  store double %104, double* %arrayidx661, align 8, !tbaa !7
  %arrayidx666 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 2
  %105 = load double, double* %arrayidx666, align 8, !tbaa !7
  %mul667 = fmul double %105, 0x4014BC9EECBFB15C
  %arrayidx672 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 2
  store double %mul667, double* %arrayidx672, align 8, !tbaa !7
  %arrayidx677 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 2
  %106 = load double, double* %arrayidx677, align 8, !tbaa !7
  %mul678 = fmul double %106, 0x4014BC9EECBFB15C
  %arrayidx683 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 2
  store double %mul678, double* %arrayidx683, align 8, !tbaa !7
  %arrayidx688 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 3
  %107 = load double, double* %arrayidx688, align 8, !tbaa !7
  %mul689 = fmul double %107, 0x4014BC9EECBFB15C
  %arrayidx694 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 3
  store double %mul689, double* %arrayidx694, align 8, !tbaa !7
  %arrayidx699 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 3
  %108 = load double, double* %arrayidx699, align 8, !tbaa !7
  %mul700 = fmul double %108, 0x4014BC9EECBFB15C
  %arrayidx705 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 3
  store double %mul700, double* %arrayidx705, align 8, !tbaa !7
  %arrayidx710 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 3
  %109 = load double, double* %arrayidx710, align 8, !tbaa !7
  %mul711 = fmul double %109, 0x4014BC9EECBFB15C
  %arrayidx716 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 3
  store double %mul711, double* %arrayidx716, align 8, !tbaa !7
  %arrayidx721 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 3
  %110 = load double, double* %arrayidx721, align 8, !tbaa !7
  %111 = tail call double @llvm.fmuladd.f64(double %110, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %112 = fadd double %111, 0x4014BC9EECBFB15C
  %arrayidx729 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 3
  store double %112, double* %arrayidx729, align 8, !tbaa !7
  %arrayidx734 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 3
  %113 = load double, double* %arrayidx734, align 8, !tbaa !7
  %mul735 = fmul double %113, 0x4014BC9EECBFB15C
  %arrayidx740 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 3
  store double %mul735, double* %arrayidx740, align 8, !tbaa !7
  %arrayidx745 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 4
  %114 = load double, double* %arrayidx745, align 8, !tbaa !7
  %mul746 = fmul double %114, 0x4014BC9EECBFB15C
  %arrayidx751 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 4
  store double %mul746, double* %arrayidx751, align 8, !tbaa !7
  %arrayidx756 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 4
  %115 = load double, double* %arrayidx756, align 8, !tbaa !7
  %mul757 = fmul double %115, 0x4014BC9EECBFB15C
  %arrayidx762 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 4
  store double %mul757, double* %arrayidx762, align 8, !tbaa !7
  %arrayidx767 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 4
  %116 = load double, double* %arrayidx767, align 8, !tbaa !7
  %mul768 = fmul double %116, 0x4014BC9EECBFB15C
  %arrayidx773 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 4
  store double %mul768, double* %arrayidx773, align 8, !tbaa !7
  %arrayidx778 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 4
  %117 = load double, double* %arrayidx778, align 8, !tbaa !7
  %mul779 = fmul double %117, 0x4014BC9EECBFB15C
  %arrayidx784 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 4
  store double %mul779, double* %arrayidx784, align 8, !tbaa !7
  %arrayidx789 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 4
  %118 = load double, double* %arrayidx789, align 8, !tbaa !7
  %119 = tail call double @llvm.fmuladd.f64(double %118, double 0x4014BC9EECBFB15C, double 1.000000e+00)
  %120 = fadd double %119, 0x4014BC9EECBFB15C
  %arrayidx797 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 4
  store double %120, double* %arrayidx797, align 8, !tbaa !7
  %sext1813 = add i64 %sext, 8589934592
  %idxprom799 = ashr exact i64 %sext1813, 32
  %arrayidx802 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 0
  %121 = load double, double* %arrayidx802, align 8, !tbaa !7
  %arrayidx808 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 0
  %122 = load double, double* %arrayidx808, align 8, !tbaa !7
  %neg810 = fmul double %122, 0xC004BC9EECBFB15C
  %123 = tail call double @llvm.fmuladd.f64(double %121, double 0x3F807C84B5DCC63F, double %neg810)
  %124 = fadd double %123, 0xC004BC9EECBFB15C
  %arrayidx817 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 0
  store double %124, double* %arrayidx817, align 8, !tbaa !7
  %arrayidx822 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 0
  %125 = load double, double* %arrayidx822, align 8, !tbaa !7
  %arrayidx828 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 0
  %126 = load double, double* %arrayidx828, align 8, !tbaa !7
  %neg830 = fmul double %126, 0xC004BC9EECBFB15C
  %127 = tail call double @llvm.fmuladd.f64(double %125, double 0x3F807C84B5DCC63F, double %neg830)
  %arrayidx835 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 0
  store double %127, double* %arrayidx835, align 8, !tbaa !7
  %arrayidx840 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 0
  %128 = load double, double* %arrayidx840, align 8, !tbaa !7
  %arrayidx846 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 0
  %129 = load double, double* %arrayidx846, align 8, !tbaa !7
  %neg848 = fmul double %129, 0xC004BC9EECBFB15C
  %130 = tail call double @llvm.fmuladd.f64(double %128, double 0x3F807C84B5DCC63F, double %neg848)
  %arrayidx853 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 0
  store double %130, double* %arrayidx853, align 8, !tbaa !7
  %arrayidx858 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 0
  %131 = load double, double* %arrayidx858, align 8, !tbaa !7
  %arrayidx864 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 0
  %132 = load double, double* %arrayidx864, align 8, !tbaa !7
  %neg866 = fmul double %132, 0xC004BC9EECBFB15C
  %133 = tail call double @llvm.fmuladd.f64(double %131, double 0x3F807C84B5DCC63F, double %neg866)
  %arrayidx871 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 0
  store double %133, double* %arrayidx871, align 8, !tbaa !7
  %arrayidx876 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 0
  %134 = load double, double* %arrayidx876, align 8, !tbaa !7
  %arrayidx882 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 0
  %135 = load double, double* %arrayidx882, align 8, !tbaa !7
  %neg884 = fmul double %135, 0xC004BC9EECBFB15C
  %136 = tail call double @llvm.fmuladd.f64(double %134, double 0x3F807C84B5DCC63F, double %neg884)
  %arrayidx889 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 0
  store double %136, double* %arrayidx889, align 8, !tbaa !7
  %arrayidx894 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 1
  %137 = load double, double* %arrayidx894, align 8, !tbaa !7
  %arrayidx900 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 1
  %138 = load double, double* %arrayidx900, align 8, !tbaa !7
  %neg902 = fmul double %138, 0xC004BC9EECBFB15C
  %139 = tail call double @llvm.fmuladd.f64(double %137, double 0x3F807C84B5DCC63F, double %neg902)
  %arrayidx907 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 1
  store double %139, double* %arrayidx907, align 8, !tbaa !7
  %arrayidx912 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 1
  %140 = load double, double* %arrayidx912, align 8, !tbaa !7
  %arrayidx918 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 1
  %141 = load double, double* %arrayidx918, align 8, !tbaa !7
  %neg920 = fmul double %141, 0xC004BC9EECBFB15C
  %142 = tail call double @llvm.fmuladd.f64(double %140, double 0x3F807C84B5DCC63F, double %neg920)
  %143 = fadd double %142, 0xC004BC9EECBFB15C
  %arrayidx927 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 1
  store double %143, double* %arrayidx927, align 8, !tbaa !7
  %arrayidx932 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 1
  %144 = load double, double* %arrayidx932, align 8, !tbaa !7
  %arrayidx938 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 1
  %145 = load double, double* %arrayidx938, align 8, !tbaa !7
  %neg940 = fmul double %145, 0xC004BC9EECBFB15C
  %146 = tail call double @llvm.fmuladd.f64(double %144, double 0x3F807C84B5DCC63F, double %neg940)
  %arrayidx945 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 1
  store double %146, double* %arrayidx945, align 8, !tbaa !7
  %arrayidx950 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 1
  %147 = load double, double* %arrayidx950, align 8, !tbaa !7
  %arrayidx956 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 1
  %148 = load double, double* %arrayidx956, align 8, !tbaa !7
  %neg958 = fmul double %148, 0xC004BC9EECBFB15C
  %149 = tail call double @llvm.fmuladd.f64(double %147, double 0x3F807C84B5DCC63F, double %neg958)
  %arrayidx963 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 1
  store double %149, double* %arrayidx963, align 8, !tbaa !7
  %arrayidx968 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 1
  %150 = load double, double* %arrayidx968, align 8, !tbaa !7
  %arrayidx974 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 1
  %151 = load double, double* %arrayidx974, align 8, !tbaa !7
  %neg976 = fmul double %151, 0xC004BC9EECBFB15C
  %152 = tail call double @llvm.fmuladd.f64(double %150, double 0x3F807C84B5DCC63F, double %neg976)
  %arrayidx981 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 1
  store double %152, double* %arrayidx981, align 8, !tbaa !7
  %arrayidx986 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 2
  %153 = load double, double* %arrayidx986, align 8, !tbaa !7
  %arrayidx992 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 2
  %154 = load double, double* %arrayidx992, align 8, !tbaa !7
  %neg994 = fmul double %154, 0xC004BC9EECBFB15C
  %155 = tail call double @llvm.fmuladd.f64(double %153, double 0x3F807C84B5DCC63F, double %neg994)
  %arrayidx999 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 2
  store double %155, double* %arrayidx999, align 8, !tbaa !7
  %arrayidx1004 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 2
  %156 = load double, double* %arrayidx1004, align 8, !tbaa !7
  %arrayidx1010 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 2
  %157 = load double, double* %arrayidx1010, align 8, !tbaa !7
  %neg1012 = fmul double %157, 0xC004BC9EECBFB15C
  %158 = tail call double @llvm.fmuladd.f64(double %156, double 0x3F807C84B5DCC63F, double %neg1012)
  %arrayidx1017 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 2
  store double %158, double* %arrayidx1017, align 8, !tbaa !7
  %arrayidx1022 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 2
  %159 = load double, double* %arrayidx1022, align 8, !tbaa !7
  %arrayidx1028 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 2
  %160 = load double, double* %arrayidx1028, align 8, !tbaa !7
  %neg1030 = fmul double %160, 0xC004BC9EECBFB15C
  %161 = tail call double @llvm.fmuladd.f64(double %159, double 0x3F807C84B5DCC63F, double %neg1030)
  %162 = fadd double %161, 0xC004BC9EECBFB15C
  %arrayidx1037 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 2
  store double %162, double* %arrayidx1037, align 8, !tbaa !7
  %arrayidx1042 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 2
  %163 = load double, double* %arrayidx1042, align 8, !tbaa !7
  %arrayidx1048 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 2
  %164 = load double, double* %arrayidx1048, align 8, !tbaa !7
  %neg1050 = fmul double %164, 0xC004BC9EECBFB15C
  %165 = tail call double @llvm.fmuladd.f64(double %163, double 0x3F807C84B5DCC63F, double %neg1050)
  %arrayidx1055 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 2
  store double %165, double* %arrayidx1055, align 8, !tbaa !7
  %arrayidx1060 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 2
  %166 = load double, double* %arrayidx1060, align 8, !tbaa !7
  %arrayidx1066 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 2
  %167 = load double, double* %arrayidx1066, align 8, !tbaa !7
  %neg1068 = fmul double %167, 0xC004BC9EECBFB15C
  %168 = tail call double @llvm.fmuladd.f64(double %166, double 0x3F807C84B5DCC63F, double %neg1068)
  %arrayidx1073 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 2
  store double %168, double* %arrayidx1073, align 8, !tbaa !7
  %arrayidx1078 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 3
  %169 = load double, double* %arrayidx1078, align 8, !tbaa !7
  %arrayidx1084 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 3
  %170 = load double, double* %arrayidx1084, align 8, !tbaa !7
  %neg1086 = fmul double %170, 0xC004BC9EECBFB15C
  %171 = tail call double @llvm.fmuladd.f64(double %169, double 0x3F807C84B5DCC63F, double %neg1086)
  %arrayidx1091 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 3
  store double %171, double* %arrayidx1091, align 8, !tbaa !7
  %arrayidx1096 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 3
  %172 = load double, double* %arrayidx1096, align 8, !tbaa !7
  %arrayidx1102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 3
  %173 = load double, double* %arrayidx1102, align 8, !tbaa !7
  %neg1104 = fmul double %173, 0xC004BC9EECBFB15C
  %174 = tail call double @llvm.fmuladd.f64(double %172, double 0x3F807C84B5DCC63F, double %neg1104)
  %arrayidx1109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 3
  store double %174, double* %arrayidx1109, align 8, !tbaa !7
  %arrayidx1114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 3
  %175 = load double, double* %arrayidx1114, align 8, !tbaa !7
  %arrayidx1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 3
  %176 = load double, double* %arrayidx1120, align 8, !tbaa !7
  %neg1122 = fmul double %176, 0xC004BC9EECBFB15C
  %177 = tail call double @llvm.fmuladd.f64(double %175, double 0x3F807C84B5DCC63F, double %neg1122)
  %arrayidx1127 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 3
  store double %177, double* %arrayidx1127, align 8, !tbaa !7
  %arrayidx1132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 3
  %178 = load double, double* %arrayidx1132, align 8, !tbaa !7
  %arrayidx1138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 3
  %179 = load double, double* %arrayidx1138, align 8, !tbaa !7
  %neg1140 = fmul double %179, 0xC004BC9EECBFB15C
  %180 = tail call double @llvm.fmuladd.f64(double %178, double 0x3F807C84B5DCC63F, double %neg1140)
  %181 = fadd double %180, 0xC004BC9EECBFB15C
  %arrayidx1147 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 3
  store double %181, double* %arrayidx1147, align 8, !tbaa !7
  %arrayidx1152 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 3
  %182 = load double, double* %arrayidx1152, align 8, !tbaa !7
  %arrayidx1158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 3
  %183 = load double, double* %arrayidx1158, align 8, !tbaa !7
  %neg1160 = fmul double %183, 0xC004BC9EECBFB15C
  %184 = tail call double @llvm.fmuladd.f64(double %182, double 0x3F807C84B5DCC63F, double %neg1160)
  %arrayidx1165 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 3
  store double %184, double* %arrayidx1165, align 8, !tbaa !7
  %arrayidx1170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 4
  %185 = load double, double* %arrayidx1170, align 8, !tbaa !7
  %arrayidx1176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 4
  %186 = load double, double* %arrayidx1176, align 8, !tbaa !7
  %neg1178 = fmul double %186, 0xC004BC9EECBFB15C
  %187 = tail call double @llvm.fmuladd.f64(double %185, double 0x3F807C84B5DCC63F, double %neg1178)
  %arrayidx1183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 4
  store double %187, double* %arrayidx1183, align 8, !tbaa !7
  %arrayidx1188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 4
  %188 = load double, double* %arrayidx1188, align 8, !tbaa !7
  %arrayidx1194 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 4
  %189 = load double, double* %arrayidx1194, align 8, !tbaa !7
  %neg1196 = fmul double %189, 0xC004BC9EECBFB15C
  %190 = tail call double @llvm.fmuladd.f64(double %188, double 0x3F807C84B5DCC63F, double %neg1196)
  %arrayidx1201 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 4
  store double %190, double* %arrayidx1201, align 8, !tbaa !7
  %arrayidx1206 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 4
  %191 = load double, double* %arrayidx1206, align 8, !tbaa !7
  %arrayidx1212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 4
  %192 = load double, double* %arrayidx1212, align 8, !tbaa !7
  %neg1214 = fmul double %192, 0xC004BC9EECBFB15C
  %193 = tail call double @llvm.fmuladd.f64(double %191, double 0x3F807C84B5DCC63F, double %neg1214)
  %arrayidx1219 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 4
  store double %193, double* %arrayidx1219, align 8, !tbaa !7
  %arrayidx1224 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 4
  %194 = load double, double* %arrayidx1224, align 8, !tbaa !7
  %arrayidx1230 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 4
  %195 = load double, double* %arrayidx1230, align 8, !tbaa !7
  %neg1232 = fmul double %195, 0xC004BC9EECBFB15C
  %196 = tail call double @llvm.fmuladd.f64(double %194, double 0x3F807C84B5DCC63F, double %neg1232)
  %arrayidx1237 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 4
  store double %196, double* %arrayidx1237, align 8, !tbaa !7
  %arrayidx1242 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 4
  %197 = load double, double* %arrayidx1242, align 8, !tbaa !7
  %arrayidx1248 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 4
  %198 = load double, double* %arrayidx1248, align 8, !tbaa !7
  %neg1250 = fmul double %198, 0xC004BC9EECBFB15C
  %199 = tail call double @llvm.fmuladd.f64(double %197, double 0x3F807C84B5DCC63F, double %neg1250)
  %200 = fadd double %199, 0xC004BC9EECBFB15C
  %arrayidx1257 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 4
  store double %200, double* %arrayidx1257, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @z_solve(double* nocapture %g_rhs, double* %g_lhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !31 {
entry:
  %p_lhsAA = alloca [5 x [5 x double]], align 16
  %p_lhsBB = alloca [5 x [5 x double]], align 16
  %p_lhsCC = alloca [5 x [5 x double]], align 16
  %p_rhs = alloca [5 x double], align 16
  %p_lhsm1CC = alloca [5 x [5 x double]], align 16
  %p_rhsm1 = alloca [5 x double], align 16
  %0 = bitcast [5 x [5 x double]]* %p_lhsAA to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #7
  %1 = bitcast [5 x [5 x double]]* %p_lhsBB to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %1) #7
  %2 = bitcast [5 x [5 x double]]* %p_lhsCC to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %2) #7
  %3 = bitcast [5 x double]* %p_rhs to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  %4 = bitcast [5 x [5 x double]]* %p_lhsm1CC to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #7
  %5 = bitcast [5 x double]* %p_rhsm1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  %call = tail call i64 @_Z13get_global_idj(i32 1) #6
  %6 = trunc i64 %call to i32
  %conv = add i32 %6, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %7 = trunc i64 %call1 to i32
  %conv3 = add i32 %7, 1
  %sub = add nsw i32 %gp1, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sub5 = add nsw i32 %gp0, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %8 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %mul = mul nsw i32 %sub5, %6
  %add11 = add nsw i32 %mul, %7
  %mul15 = mul i32 %add11, 12225
  %idxprom = sext i32 %mul15 to i64
  %arrayidx = getelementptr inbounds double, double* %g_lhs, i64 %idxprom
  %9 = bitcast double* %arrayidx to [3 x [5 x [5 x double]]]*
  %sub16 = add i32 %gp2, -1
  %arraydecay = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0
  %arrayidx18 = getelementptr inbounds double, double* %arrayidx, i64 25
  %10 = load double, double* %arrayidx18, align 8, !tbaa !7
  %arrayidx3.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 0
  store double %10, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i = getelementptr inbounds double, double* %arrayidx18, i64 1
  %11 = load double, double* %arrayidx5.i, align 8, !tbaa !7
  %arrayidx7.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 1
  store double %11, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i = getelementptr inbounds double, double* %arrayidx18, i64 2
  %12 = load double, double* %arrayidx9.i, align 8, !tbaa !7
  %arrayidx11.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 2
  store double %12, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i = getelementptr inbounds double, double* %arrayidx18, i64 3
  %13 = load double, double* %arrayidx13.i, align 8, !tbaa !7
  %arrayidx15.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 3
  store double %13, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i = getelementptr inbounds double, double* %arrayidx18, i64 4
  %14 = load double, double* %arrayidx17.i, align 8, !tbaa !7
  %arrayidx19.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 0, i64 4
  store double %14, double* %arrayidx19.i, align 16, !tbaa !7
  %15 = getelementptr inbounds double, double* %arrayidx18, i64 5
  %16 = load double, double* %15, align 8, !tbaa !7
  %arrayidx23.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 0
  store double %16, double* %arrayidx23.i, align 8, !tbaa !7
  %17 = getelementptr inbounds double, double* %arrayidx18, i64 6
  %18 = load double, double* %17, align 8, !tbaa !7
  %arrayidx27.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 1
  store double %18, double* %arrayidx27.i, align 16, !tbaa !7
  %19 = getelementptr inbounds double, double* %arrayidx18, i64 7
  %20 = load double, double* %19, align 8, !tbaa !7
  %arrayidx31.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 2
  store double %20, double* %arrayidx31.i, align 8, !tbaa !7
  %21 = getelementptr inbounds double, double* %arrayidx18, i64 8
  %22 = load double, double* %21, align 8, !tbaa !7
  %arrayidx35.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 3
  store double %22, double* %arrayidx35.i, align 16, !tbaa !7
  %23 = getelementptr inbounds double, double* %arrayidx18, i64 9
  %24 = load double, double* %23, align 8, !tbaa !7
  %arrayidx39.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 1, i64 4
  store double %24, double* %arrayidx39.i, align 8, !tbaa !7
  %25 = getelementptr inbounds double, double* %arrayidx18, i64 10
  %26 = load double, double* %25, align 8, !tbaa !7
  %arrayidx43.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 0
  store double %26, double* %arrayidx43.i, align 16, !tbaa !7
  %27 = getelementptr inbounds double, double* %arrayidx18, i64 11
  %28 = load double, double* %27, align 8, !tbaa !7
  %arrayidx47.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 1
  store double %28, double* %arrayidx47.i, align 8, !tbaa !7
  %29 = getelementptr inbounds double, double* %arrayidx18, i64 12
  %30 = load double, double* %29, align 8, !tbaa !7
  %arrayidx51.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 2
  store double %30, double* %arrayidx51.i, align 16, !tbaa !7
  %31 = getelementptr inbounds double, double* %arrayidx18, i64 13
  %32 = load double, double* %31, align 8, !tbaa !7
  %arrayidx55.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 3
  store double %32, double* %arrayidx55.i, align 8, !tbaa !7
  %33 = getelementptr inbounds double, double* %arrayidx18, i64 14
  %34 = load double, double* %33, align 8, !tbaa !7
  %arrayidx59.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 2, i64 4
  store double %34, double* %arrayidx59.i, align 16, !tbaa !7
  %35 = getelementptr inbounds double, double* %arrayidx18, i64 15
  %36 = load double, double* %35, align 8, !tbaa !7
  %arrayidx63.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 0
  store double %36, double* %arrayidx63.i, align 8, !tbaa !7
  %37 = getelementptr inbounds double, double* %arrayidx18, i64 16
  %38 = load double, double* %37, align 8, !tbaa !7
  %arrayidx67.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 1
  store double %38, double* %arrayidx67.i, align 16, !tbaa !7
  %39 = getelementptr inbounds double, double* %arrayidx18, i64 17
  %40 = load double, double* %39, align 8, !tbaa !7
  %arrayidx71.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 2
  store double %40, double* %arrayidx71.i, align 8, !tbaa !7
  %41 = getelementptr inbounds double, double* %arrayidx18, i64 18
  %42 = load double, double* %41, align 8, !tbaa !7
  %arrayidx75.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 3
  store double %42, double* %arrayidx75.i, align 16, !tbaa !7
  %43 = getelementptr inbounds double, double* %arrayidx18, i64 19
  %44 = load double, double* %43, align 8, !tbaa !7
  %arrayidx79.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 3, i64 4
  store double %44, double* %arrayidx79.i, align 8, !tbaa !7
  %45 = getelementptr inbounds double, double* %arrayidx18, i64 20
  %46 = load double, double* %45, align 8, !tbaa !7
  %arrayidx83.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 0
  store double %46, double* %arrayidx83.i, align 16, !tbaa !7
  %47 = getelementptr inbounds double, double* %arrayidx18, i64 21
  %48 = load double, double* %47, align 8, !tbaa !7
  %arrayidx87.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 1
  store double %48, double* %arrayidx87.i, align 8, !tbaa !7
  %49 = getelementptr inbounds double, double* %arrayidx18, i64 22
  %50 = load double, double* %49, align 8, !tbaa !7
  %arrayidx91.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 2
  store double %50, double* %arrayidx91.i, align 16, !tbaa !7
  %51 = getelementptr inbounds double, double* %arrayidx18, i64 23
  %52 = load double, double* %51, align 8, !tbaa !7
  %arrayidx95.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 3
  store double %52, double* %arrayidx95.i, align 8, !tbaa !7
  %53 = getelementptr inbounds double, double* %arrayidx18, i64 24
  %54 = load double, double* %53, align 8, !tbaa !7
  %arrayidx99.i = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsBB, i64 0, i64 4, i64 4
  store double %54, double* %arrayidx99.i, align 16, !tbaa !7
  %arraydecay20 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0
  %arrayidx22 = getelementptr inbounds double, double* %arrayidx, i64 50
  %55 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx3.i422 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 0
  store double %55, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i423 = getelementptr inbounds double, double* %arrayidx22, i64 1
  %56 = load double, double* %arrayidx5.i423, align 8, !tbaa !7
  %arrayidx7.i424 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 1
  store double %56, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i425 = getelementptr inbounds double, double* %arrayidx22, i64 2
  %57 = load double, double* %arrayidx9.i425, align 8, !tbaa !7
  %arrayidx11.i426 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 2
  store double %57, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i427 = getelementptr inbounds double, double* %arrayidx22, i64 3
  %58 = load double, double* %arrayidx13.i427, align 8, !tbaa !7
  %arrayidx15.i428 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 3
  store double %58, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i429 = getelementptr inbounds double, double* %arrayidx22, i64 4
  %59 = load double, double* %arrayidx17.i429, align 8, !tbaa !7
  %arrayidx19.i430 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 0, i64 4
  store double %59, double* %arrayidx19.i430, align 16, !tbaa !7
  %60 = getelementptr inbounds double, double* %arrayidx22, i64 5
  %61 = load double, double* %60, align 8, !tbaa !7
  %arrayidx23.i432 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 0
  store double %61, double* %arrayidx23.i432, align 8, !tbaa !7
  %62 = getelementptr inbounds double, double* %arrayidx22, i64 6
  %63 = load double, double* %62, align 8, !tbaa !7
  %arrayidx27.i434 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 1
  store double %63, double* %arrayidx27.i434, align 16, !tbaa !7
  %64 = getelementptr inbounds double, double* %arrayidx22, i64 7
  %65 = load double, double* %64, align 8, !tbaa !7
  %arrayidx31.i436 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 2
  store double %65, double* %arrayidx31.i436, align 8, !tbaa !7
  %66 = getelementptr inbounds double, double* %arrayidx22, i64 8
  %67 = load double, double* %66, align 8, !tbaa !7
  %arrayidx35.i438 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 3
  store double %67, double* %arrayidx35.i438, align 16, !tbaa !7
  %68 = getelementptr inbounds double, double* %arrayidx22, i64 9
  %69 = load double, double* %68, align 8, !tbaa !7
  %arrayidx39.i440 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 1, i64 4
  store double %69, double* %arrayidx39.i440, align 8, !tbaa !7
  %70 = getelementptr inbounds double, double* %arrayidx22, i64 10
  %71 = load double, double* %70, align 8, !tbaa !7
  %arrayidx43.i442 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 0
  store double %71, double* %arrayidx43.i442, align 16, !tbaa !7
  %72 = getelementptr inbounds double, double* %arrayidx22, i64 11
  %73 = load double, double* %72, align 8, !tbaa !7
  %arrayidx47.i444 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 1
  store double %73, double* %arrayidx47.i444, align 8, !tbaa !7
  %74 = getelementptr inbounds double, double* %arrayidx22, i64 12
  %75 = load double, double* %74, align 8, !tbaa !7
  %arrayidx51.i446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 2
  store double %75, double* %arrayidx51.i446, align 16, !tbaa !7
  %76 = getelementptr inbounds double, double* %arrayidx22, i64 13
  %77 = load double, double* %76, align 8, !tbaa !7
  %arrayidx55.i448 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 3
  store double %77, double* %arrayidx55.i448, align 8, !tbaa !7
  %78 = getelementptr inbounds double, double* %arrayidx22, i64 14
  %79 = load double, double* %78, align 8, !tbaa !7
  %arrayidx59.i450 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 2, i64 4
  store double %79, double* %arrayidx59.i450, align 16, !tbaa !7
  %80 = getelementptr inbounds double, double* %arrayidx22, i64 15
  %81 = load double, double* %80, align 8, !tbaa !7
  %arrayidx63.i452 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 0
  store double %81, double* %arrayidx63.i452, align 8, !tbaa !7
  %82 = getelementptr inbounds double, double* %arrayidx22, i64 16
  %83 = load double, double* %82, align 8, !tbaa !7
  %arrayidx67.i454 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 1
  store double %83, double* %arrayidx67.i454, align 16, !tbaa !7
  %84 = getelementptr inbounds double, double* %arrayidx22, i64 17
  %85 = load double, double* %84, align 8, !tbaa !7
  %arrayidx71.i456 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 2
  store double %85, double* %arrayidx71.i456, align 8, !tbaa !7
  %86 = getelementptr inbounds double, double* %arrayidx22, i64 18
  %87 = load double, double* %86, align 8, !tbaa !7
  %arrayidx75.i458 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 3
  store double %87, double* %arrayidx75.i458, align 16, !tbaa !7
  %88 = getelementptr inbounds double, double* %arrayidx22, i64 19
  %89 = load double, double* %88, align 8, !tbaa !7
  %arrayidx79.i460 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 3, i64 4
  store double %89, double* %arrayidx79.i460, align 8, !tbaa !7
  %90 = getelementptr inbounds double, double* %arrayidx22, i64 20
  %91 = load double, double* %90, align 8, !tbaa !7
  %arrayidx83.i462 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 0
  store double %91, double* %arrayidx83.i462, align 16, !tbaa !7
  %92 = getelementptr inbounds double, double* %arrayidx22, i64 21
  %93 = load double, double* %92, align 8, !tbaa !7
  %arrayidx87.i464 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 1
  store double %93, double* %arrayidx87.i464, align 8, !tbaa !7
  %94 = getelementptr inbounds double, double* %arrayidx22, i64 22
  %95 = load double, double* %94, align 8, !tbaa !7
  %arrayidx91.i466 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 2
  store double %95, double* %arrayidx91.i466, align 16, !tbaa !7
  %96 = getelementptr inbounds double, double* %arrayidx22, i64 23
  %97 = load double, double* %96, align 8, !tbaa !7
  %arrayidx95.i468 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 3
  store double %97, double* %arrayidx95.i468, align 8, !tbaa !7
  %98 = getelementptr inbounds double, double* %arrayidx22, i64 24
  %99 = load double, double* %98, align 8, !tbaa !7
  %arrayidx99.i470 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsCC, i64 0, i64 4, i64 4
  store double %99, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay24 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 0
  %idxprom26 = sext i32 %conv to i64
  %idxprom28 = sext i32 %conv3 to i64
  %arraydecay30 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom26, i64 %idxprom28, i64 0
  %100 = load double, double* %arraydecay30, align 8, !tbaa !7
  store double %100, double* %arraydecay24, align 16, !tbaa !7
  %arrayidx2.i471 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom26, i64 %idxprom28, i64 1
  %101 = load double, double* %arrayidx2.i471, align 8, !tbaa !7
  %arrayidx3.i472 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 1
  store double %101, double* %arrayidx3.i472, align 8, !tbaa !7
  %arrayidx4.i473 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom26, i64 %idxprom28, i64 2
  %102 = load double, double* %arrayidx4.i473, align 8, !tbaa !7
  %arrayidx5.i474 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 2
  store double %102, double* %arrayidx5.i474, align 16, !tbaa !7
  %arrayidx6.i475 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom26, i64 %idxprom28, i64 3
  %103 = load double, double* %arrayidx6.i475, align 8, !tbaa !7
  %arrayidx7.i476 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 3
  store double %103, double* %arrayidx7.i476, align 8, !tbaa !7
  %arrayidx8.i477 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 0, i64 %idxprom26, i64 %idxprom28, i64 4
  %104 = load double, double* %arrayidx8.i477, align 8, !tbaa !7
  %arrayidx9.i478 = getelementptr inbounds [5 x double], [5 x double]* %p_rhs, i64 0, i64 4
  store double %104, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_binvcrhs([5 x double]* nonnull %arraydecay, [5 x double]* nonnull %arraydecay20, double* nonnull %arraydecay24)
  %105 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %105, double* %arrayidx18, align 8, !tbaa !7
  %106 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %106, double* %arrayidx5.i, align 8, !tbaa !7
  %107 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %107, double* %arrayidx9.i, align 8, !tbaa !7
  %108 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %108, double* %arrayidx13.i, align 8, !tbaa !7
  %109 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %109, double* %arrayidx17.i, align 8, !tbaa !7
  %110 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %110, double* %15, align 8, !tbaa !7
  %111 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %111, double* %17, align 8, !tbaa !7
  %112 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %112, double* %19, align 8, !tbaa !7
  %113 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %113, double* %21, align 8, !tbaa !7
  %114 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %114, double* %23, align 8, !tbaa !7
  %115 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %115, double* %25, align 8, !tbaa !7
  %116 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %116, double* %27, align 8, !tbaa !7
  %117 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %117, double* %29, align 8, !tbaa !7
  %118 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %118, double* %31, align 8, !tbaa !7
  %119 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %119, double* %33, align 8, !tbaa !7
  %120 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %120, double* %35, align 8, !tbaa !7
  %121 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %121, double* %37, align 8, !tbaa !7
  %122 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %122, double* %39, align 8, !tbaa !7
  %123 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %123, double* %41, align 8, !tbaa !7
  %124 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %124, double* %43, align 8, !tbaa !7
  %125 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %125, double* %45, align 8, !tbaa !7
  %126 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %126, double* %47, align 8, !tbaa !7
  %127 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %127, double* %49, align 8, !tbaa !7
  %128 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %128, double* %51, align 8, !tbaa !7
  %129 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %129, double* %53, align 8, !tbaa !7
  %130 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %130, double* %arrayidx22, align 8, !tbaa !7
  %131 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %131, double* %arrayidx5.i423, align 8, !tbaa !7
  %132 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %132, double* %arrayidx9.i425, align 8, !tbaa !7
  %133 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %133, double* %arrayidx13.i427, align 8, !tbaa !7
  %134 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %134, double* %arrayidx17.i429, align 8, !tbaa !7
  %135 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %135, double* %60, align 8, !tbaa !7
  %136 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %136, double* %62, align 8, !tbaa !7
  %137 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %137, double* %64, align 8, !tbaa !7
  %138 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %138, double* %66, align 8, !tbaa !7
  %139 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %139, double* %68, align 8, !tbaa !7
  %140 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %140, double* %70, align 8, !tbaa !7
  %141 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %141, double* %72, align 8, !tbaa !7
  %142 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %142, double* %74, align 8, !tbaa !7
  %143 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %143, double* %76, align 8, !tbaa !7
  %144 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %144, double* %78, align 8, !tbaa !7
  %145 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %145, double* %80, align 8, !tbaa !7
  %146 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %146, double* %82, align 8, !tbaa !7
  %147 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %147, double* %84, align 8, !tbaa !7
  %148 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %148, double* %86, align 8, !tbaa !7
  %149 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %149, double* %88, align 8, !tbaa !7
  %150 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %150, double* %90, align 8, !tbaa !7
  %151 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %151, double* %92, align 8, !tbaa !7
  %152 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %152, double* %94, align 8, !tbaa !7
  %153 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %153, double* %96, align 8, !tbaa !7
  %154 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %154, double* %98, align 8, !tbaa !7
  %155 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %155, double* %arraydecay30, align 8, !tbaa !7
  %156 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %156, double* %arrayidx2.i471, align 8, !tbaa !7
  %157 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %157, double* %arrayidx4.i473, align 8, !tbaa !7
  %158 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %158, double* %arrayidx6.i475, align 8, !tbaa !7
  %159 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %159, double* %arrayidx8.i477, align 8, !tbaa !7
  %cmp50.not1217 = icmp slt i32 %gp2, 3
  br i1 %cmp50.not1217, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %arraydecay52 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0
  %arrayidx3.i1156 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 0
  %arrayidx7.i1158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 1
  %arrayidx11.i1160 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 2
  %arrayidx15.i1162 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 3
  %arrayidx19.i1164 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 4
  %arrayidx23.i1166 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 0
  %arrayidx27.i1168 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 1
  %arrayidx31.i1170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 2
  %arrayidx35.i1172 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 3
  %arrayidx39.i1174 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 4
  %arrayidx43.i1176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 0
  %arrayidx47.i1178 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 1
  %arrayidx51.i1180 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 2
  %arrayidx55.i1182 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 3
  %arrayidx59.i1184 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 4
  %arrayidx63.i1186 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 0
  %arrayidx67.i1188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 1
  %arrayidx71.i1190 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 2
  %arrayidx75.i1192 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 3
  %arrayidx79.i1194 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 4
  %arrayidx83.i1196 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 0
  %arrayidx87.i1198 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 1
  %arrayidx91.i1200 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 2
  %arrayidx95.i1202 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 3
  %arrayidx99.i1204 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 4
  %arraydecay54 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  %arrayidx3.i1148 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  %arrayidx5.i1150 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  %arrayidx7.i1152 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  %arrayidx9.i1154 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  %arraydecay56 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0
  %arrayidx3.i1098 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 0
  %arrayidx7.i1100 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 1
  %arrayidx11.i1102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 2
  %arrayidx15.i1104 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 3
  %arrayidx19.i1106 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 4
  %arrayidx23.i1108 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 0
  %arrayidx27.i1110 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 1
  %arrayidx31.i1112 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 2
  %arrayidx35.i1114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 3
  %arrayidx39.i1116 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 4
  %arrayidx43.i1118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 0
  %arrayidx47.i1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 1
  %arrayidx51.i1122 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 2
  %arrayidx55.i1124 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 3
  %arrayidx59.i1126 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 4
  %arrayidx63.i1128 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 0
  %arrayidx67.i1130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 1
  %arrayidx71.i1132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 2
  %arrayidx75.i1134 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 3
  %arrayidx79.i1136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 4
  %arrayidx83.i1138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 0
  %arrayidx87.i1140 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 1
  %arrayidx91.i1142 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 2
  %arrayidx95.i1144 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 3
  %arrayidx99.i1146 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 4
  %wide.trip.count = zext i32 %sub16 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %160 = phi double [ %159, %for.body.lr.ph ], [ %349, %for.body ]
  %161 = phi double [ %158, %for.body.lr.ph ], [ %348, %for.body ]
  %162 = phi double [ %157, %for.body.lr.ph ], [ %347, %for.body ]
  %163 = phi double [ %156, %for.body.lr.ph ], [ %346, %for.body ]
  %164 = phi double [ %155, %for.body.lr.ph ], [ %345, %for.body ]
  %165 = phi double [ %154, %for.body.lr.ph ], [ %344, %for.body ]
  %166 = phi double [ %153, %for.body.lr.ph ], [ %343, %for.body ]
  %167 = phi double [ %152, %for.body.lr.ph ], [ %342, %for.body ]
  %168 = phi double [ %151, %for.body.lr.ph ], [ %341, %for.body ]
  %169 = phi double [ %150, %for.body.lr.ph ], [ %340, %for.body ]
  %170 = phi double [ %149, %for.body.lr.ph ], [ %339, %for.body ]
  %171 = phi double [ %148, %for.body.lr.ph ], [ %338, %for.body ]
  %172 = phi double [ %147, %for.body.lr.ph ], [ %337, %for.body ]
  %173 = phi double [ %146, %for.body.lr.ph ], [ %336, %for.body ]
  %174 = phi double [ %145, %for.body.lr.ph ], [ %335, %for.body ]
  %175 = phi double [ %144, %for.body.lr.ph ], [ %334, %for.body ]
  %176 = phi double [ %143, %for.body.lr.ph ], [ %333, %for.body ]
  %177 = phi double [ %142, %for.body.lr.ph ], [ %332, %for.body ]
  %178 = phi double [ %141, %for.body.lr.ph ], [ %331, %for.body ]
  %179 = phi double [ %140, %for.body.lr.ph ], [ %330, %for.body ]
  %180 = phi double [ %139, %for.body.lr.ph ], [ %329, %for.body ]
  %181 = phi double [ %138, %for.body.lr.ph ], [ %328, %for.body ]
  %182 = phi double [ %137, %for.body.lr.ph ], [ %327, %for.body ]
  %183 = phi double [ %136, %for.body.lr.ph ], [ %326, %for.body ]
  %184 = phi double [ %135, %for.body.lr.ph ], [ %325, %for.body ]
  %185 = phi double [ %134, %for.body.lr.ph ], [ %324, %for.body ]
  %186 = phi double [ %133, %for.body.lr.ph ], [ %323, %for.body ]
  %187 = phi double [ %132, %for.body.lr.ph ], [ %322, %for.body ]
  %188 = phi double [ %131, %for.body.lr.ph ], [ %321, %for.body ]
  %189 = phi double [ %130, %for.body.lr.ph ], [ %320, %for.body ]
  %indvars.iv1222 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next1223, %for.body ]
  store double %189, double* %arrayidx3.i1156, align 16, !tbaa !7
  store double %188, double* %arrayidx7.i1158, align 8, !tbaa !7
  store double %187, double* %arrayidx11.i1160, align 16, !tbaa !7
  store double %186, double* %arrayidx15.i1162, align 8, !tbaa !7
  store double %185, double* %arrayidx19.i1164, align 16, !tbaa !7
  store double %184, double* %arrayidx23.i1166, align 8, !tbaa !7
  store double %183, double* %arrayidx27.i1168, align 16, !tbaa !7
  store double %182, double* %arrayidx31.i1170, align 8, !tbaa !7
  store double %181, double* %arrayidx35.i1172, align 16, !tbaa !7
  store double %180, double* %arrayidx39.i1174, align 8, !tbaa !7
  store double %179, double* %arrayidx43.i1176, align 16, !tbaa !7
  store double %178, double* %arrayidx47.i1178, align 8, !tbaa !7
  store double %177, double* %arrayidx51.i1180, align 16, !tbaa !7
  store double %176, double* %arrayidx55.i1182, align 8, !tbaa !7
  store double %175, double* %arrayidx59.i1184, align 16, !tbaa !7
  store double %174, double* %arrayidx63.i1186, align 8, !tbaa !7
  store double %173, double* %arrayidx67.i1188, align 16, !tbaa !7
  store double %172, double* %arrayidx71.i1190, align 8, !tbaa !7
  store double %171, double* %arrayidx75.i1192, align 16, !tbaa !7
  store double %170, double* %arrayidx79.i1194, align 8, !tbaa !7
  store double %169, double* %arrayidx83.i1196, align 16, !tbaa !7
  store double %168, double* %arrayidx87.i1198, align 8, !tbaa !7
  store double %167, double* %arrayidx91.i1200, align 16, !tbaa !7
  store double %166, double* %arrayidx95.i1202, align 8, !tbaa !7
  store double %165, double* %arrayidx99.i1204, align 16, !tbaa !7
  store double %164, double* %arraydecay54, align 16, !tbaa !7
  store double %163, double* %arrayidx3.i1148, align 8, !tbaa !7
  store double %162, double* %arrayidx5.i1150, align 16, !tbaa !7
  store double %161, double* %arrayidx7.i1152, align 8, !tbaa !7
  store double %160, double* %arrayidx9.i1154, align 16, !tbaa !7
  %arrayidx1.i1097 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 0
  %190 = load double, double* %arrayidx1.i1097, align 8, !tbaa !7
  store double %190, double* %arrayidx3.i1098, align 16, !tbaa !7
  %arrayidx5.i1099 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 1
  %191 = load double, double* %arrayidx5.i1099, align 8, !tbaa !7
  store double %191, double* %arrayidx7.i1100, align 8, !tbaa !7
  %arrayidx9.i1101 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 2
  %192 = load double, double* %arrayidx9.i1101, align 8, !tbaa !7
  store double %192, double* %arrayidx11.i1102, align 16, !tbaa !7
  %arrayidx13.i1103 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 3
  %193 = load double, double* %arrayidx13.i1103, align 8, !tbaa !7
  store double %193, double* %arrayidx15.i1104, align 8, !tbaa !7
  %arrayidx17.i1105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 0, i64 4
  %194 = load double, double* %arrayidx17.i1105, align 8, !tbaa !7
  store double %194, double* %arrayidx19.i1106, align 16, !tbaa !7
  %arrayidx21.i1107 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 0
  %195 = load double, double* %arrayidx21.i1107, align 8, !tbaa !7
  store double %195, double* %arrayidx23.i1108, align 8, !tbaa !7
  %arrayidx25.i1109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 1
  %196 = load double, double* %arrayidx25.i1109, align 8, !tbaa !7
  store double %196, double* %arrayidx27.i1110, align 16, !tbaa !7
  %arrayidx29.i1111 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 2
  %197 = load double, double* %arrayidx29.i1111, align 8, !tbaa !7
  store double %197, double* %arrayidx31.i1112, align 8, !tbaa !7
  %arrayidx33.i1113 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 3
  %198 = load double, double* %arrayidx33.i1113, align 8, !tbaa !7
  store double %198, double* %arrayidx35.i1114, align 16, !tbaa !7
  %arrayidx37.i1115 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 1, i64 4
  %199 = load double, double* %arrayidx37.i1115, align 8, !tbaa !7
  store double %199, double* %arrayidx39.i1116, align 8, !tbaa !7
  %arrayidx41.i1117 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 0
  %200 = load double, double* %arrayidx41.i1117, align 8, !tbaa !7
  store double %200, double* %arrayidx43.i1118, align 16, !tbaa !7
  %arrayidx45.i1119 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 1
  %201 = load double, double* %arrayidx45.i1119, align 8, !tbaa !7
  store double %201, double* %arrayidx47.i1120, align 8, !tbaa !7
  %arrayidx49.i1121 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 2
  %202 = load double, double* %arrayidx49.i1121, align 8, !tbaa !7
  store double %202, double* %arrayidx51.i1122, align 16, !tbaa !7
  %arrayidx53.i1123 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 3
  %203 = load double, double* %arrayidx53.i1123, align 8, !tbaa !7
  store double %203, double* %arrayidx55.i1124, align 8, !tbaa !7
  %arrayidx57.i1125 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 2, i64 4
  %204 = load double, double* %arrayidx57.i1125, align 8, !tbaa !7
  store double %204, double* %arrayidx59.i1126, align 16, !tbaa !7
  %arrayidx61.i1127 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 0
  %205 = load double, double* %arrayidx61.i1127, align 8, !tbaa !7
  store double %205, double* %arrayidx63.i1128, align 8, !tbaa !7
  %arrayidx65.i1129 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 1
  %206 = load double, double* %arrayidx65.i1129, align 8, !tbaa !7
  store double %206, double* %arrayidx67.i1130, align 16, !tbaa !7
  %arrayidx69.i1131 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 2
  %207 = load double, double* %arrayidx69.i1131, align 8, !tbaa !7
  store double %207, double* %arrayidx71.i1132, align 8, !tbaa !7
  %arrayidx73.i1133 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 3
  %208 = load double, double* %arrayidx73.i1133, align 8, !tbaa !7
  store double %208, double* %arrayidx75.i1134, align 16, !tbaa !7
  %arrayidx77.i1135 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 3, i64 4
  %209 = load double, double* %arrayidx77.i1135, align 8, !tbaa !7
  store double %209, double* %arrayidx79.i1136, align 8, !tbaa !7
  %arrayidx81.i1137 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 0
  %210 = load double, double* %arrayidx81.i1137, align 8, !tbaa !7
  store double %210, double* %arrayidx83.i1138, align 16, !tbaa !7
  %arrayidx85.i1139 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 1
  %211 = load double, double* %arrayidx85.i1139, align 8, !tbaa !7
  store double %211, double* %arrayidx87.i1140, align 8, !tbaa !7
  %arrayidx89.i1141 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 2
  %212 = load double, double* %arrayidx89.i1141, align 8, !tbaa !7
  store double %212, double* %arrayidx91.i1142, align 16, !tbaa !7
  %arrayidx93.i1143 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 3
  %213 = load double, double* %arrayidx93.i1143, align 8, !tbaa !7
  store double %213, double* %arrayidx95.i1144, align 8, !tbaa !7
  %arrayidx97.i1145 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 0, i64 4, i64 4
  %214 = load double, double* %arrayidx97.i1145, align 8, !tbaa !7
  store double %214, double* %arrayidx99.i1146, align 16, !tbaa !7
  %arrayidx1.i1047 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 0
  %215 = load double, double* %arrayidx1.i1047, align 8, !tbaa !7
  store double %215, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i1049 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 1
  %216 = load double, double* %arrayidx5.i1049, align 8, !tbaa !7
  store double %216, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i1051 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 2
  %217 = load double, double* %arrayidx9.i1051, align 8, !tbaa !7
  store double %217, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i1053 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 3
  %218 = load double, double* %arrayidx13.i1053, align 8, !tbaa !7
  store double %218, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i1055 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 0, i64 4
  %219 = load double, double* %arrayidx17.i1055, align 8, !tbaa !7
  store double %219, double* %arrayidx19.i, align 16, !tbaa !7
  %arrayidx21.i1057 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 0
  %220 = load double, double* %arrayidx21.i1057, align 8, !tbaa !7
  store double %220, double* %arrayidx23.i, align 8, !tbaa !7
  %arrayidx25.i1059 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 1
  %221 = load double, double* %arrayidx25.i1059, align 8, !tbaa !7
  store double %221, double* %arrayidx27.i, align 16, !tbaa !7
  %arrayidx29.i1061 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 2
  %222 = load double, double* %arrayidx29.i1061, align 8, !tbaa !7
  store double %222, double* %arrayidx31.i, align 8, !tbaa !7
  %arrayidx33.i1063 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 3
  %223 = load double, double* %arrayidx33.i1063, align 8, !tbaa !7
  store double %223, double* %arrayidx35.i, align 16, !tbaa !7
  %arrayidx37.i1065 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 1, i64 4
  %224 = load double, double* %arrayidx37.i1065, align 8, !tbaa !7
  store double %224, double* %arrayidx39.i, align 8, !tbaa !7
  %arrayidx41.i1067 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 0
  %225 = load double, double* %arrayidx41.i1067, align 8, !tbaa !7
  store double %225, double* %arrayidx43.i, align 16, !tbaa !7
  %arrayidx45.i1069 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 1
  %226 = load double, double* %arrayidx45.i1069, align 8, !tbaa !7
  store double %226, double* %arrayidx47.i, align 8, !tbaa !7
  %arrayidx49.i1071 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 2
  %227 = load double, double* %arrayidx49.i1071, align 8, !tbaa !7
  store double %227, double* %arrayidx51.i, align 16, !tbaa !7
  %arrayidx53.i1073 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 3
  %228 = load double, double* %arrayidx53.i1073, align 8, !tbaa !7
  store double %228, double* %arrayidx55.i, align 8, !tbaa !7
  %arrayidx57.i1075 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 2, i64 4
  %229 = load double, double* %arrayidx57.i1075, align 8, !tbaa !7
  store double %229, double* %arrayidx59.i, align 16, !tbaa !7
  %arrayidx61.i1077 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 0
  %230 = load double, double* %arrayidx61.i1077, align 8, !tbaa !7
  store double %230, double* %arrayidx63.i, align 8, !tbaa !7
  %arrayidx65.i1079 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 1
  %231 = load double, double* %arrayidx65.i1079, align 8, !tbaa !7
  store double %231, double* %arrayidx67.i, align 16, !tbaa !7
  %arrayidx69.i1081 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 2
  %232 = load double, double* %arrayidx69.i1081, align 8, !tbaa !7
  store double %232, double* %arrayidx71.i, align 8, !tbaa !7
  %arrayidx73.i1083 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 3
  %233 = load double, double* %arrayidx73.i1083, align 8, !tbaa !7
  store double %233, double* %arrayidx75.i, align 16, !tbaa !7
  %arrayidx77.i1085 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 3, i64 4
  %234 = load double, double* %arrayidx77.i1085, align 8, !tbaa !7
  store double %234, double* %arrayidx79.i, align 8, !tbaa !7
  %arrayidx81.i1087 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 0
  %235 = load double, double* %arrayidx81.i1087, align 8, !tbaa !7
  store double %235, double* %arrayidx83.i, align 16, !tbaa !7
  %arrayidx85.i1089 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 1
  %236 = load double, double* %arrayidx85.i1089, align 8, !tbaa !7
  store double %236, double* %arrayidx87.i, align 8, !tbaa !7
  %arrayidx89.i1091 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 2
  %237 = load double, double* %arrayidx89.i1091, align 8, !tbaa !7
  store double %237, double* %arrayidx91.i, align 16, !tbaa !7
  %arrayidx93.i1093 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 3
  %238 = load double, double* %arrayidx93.i1093, align 8, !tbaa !7
  store double %238, double* %arrayidx95.i, align 8, !tbaa !7
  %arrayidx97.i1095 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 1, i64 4, i64 4
  %239 = load double, double* %arrayidx97.i1095, align 8, !tbaa !7
  store double %239, double* %arrayidx99.i, align 16, !tbaa !7
  %arrayidx1.i997 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 0
  %240 = load double, double* %arrayidx1.i997, align 8, !tbaa !7
  store double %240, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i999 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 1
  %241 = load double, double* %arrayidx5.i999, align 8, !tbaa !7
  store double %241, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i1001 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 2
  %242 = load double, double* %arrayidx9.i1001, align 8, !tbaa !7
  store double %242, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i1003 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 3
  %243 = load double, double* %arrayidx13.i1003, align 8, !tbaa !7
  store double %243, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i1005 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 0, i64 4
  %244 = load double, double* %arrayidx17.i1005, align 8, !tbaa !7
  store double %244, double* %arrayidx19.i430, align 16, !tbaa !7
  %arrayidx21.i1007 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 0
  %245 = load double, double* %arrayidx21.i1007, align 8, !tbaa !7
  store double %245, double* %arrayidx23.i432, align 8, !tbaa !7
  %arrayidx25.i1009 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 1
  %246 = load double, double* %arrayidx25.i1009, align 8, !tbaa !7
  store double %246, double* %arrayidx27.i434, align 16, !tbaa !7
  %arrayidx29.i1011 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 2
  %247 = load double, double* %arrayidx29.i1011, align 8, !tbaa !7
  store double %247, double* %arrayidx31.i436, align 8, !tbaa !7
  %arrayidx33.i1013 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 3
  %248 = load double, double* %arrayidx33.i1013, align 8, !tbaa !7
  store double %248, double* %arrayidx35.i438, align 16, !tbaa !7
  %arrayidx37.i1015 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 1, i64 4
  %249 = load double, double* %arrayidx37.i1015, align 8, !tbaa !7
  store double %249, double* %arrayidx39.i440, align 8, !tbaa !7
  %arrayidx41.i1017 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 0
  %250 = load double, double* %arrayidx41.i1017, align 8, !tbaa !7
  store double %250, double* %arrayidx43.i442, align 16, !tbaa !7
  %arrayidx45.i1019 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 1
  %251 = load double, double* %arrayidx45.i1019, align 8, !tbaa !7
  store double %251, double* %arrayidx47.i444, align 8, !tbaa !7
  %arrayidx49.i1021 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 2
  %252 = load double, double* %arrayidx49.i1021, align 8, !tbaa !7
  store double %252, double* %arrayidx51.i446, align 16, !tbaa !7
  %arrayidx53.i1023 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 3
  %253 = load double, double* %arrayidx53.i1023, align 8, !tbaa !7
  store double %253, double* %arrayidx55.i448, align 8, !tbaa !7
  %arrayidx57.i1025 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 2, i64 4
  %254 = load double, double* %arrayidx57.i1025, align 8, !tbaa !7
  store double %254, double* %arrayidx59.i450, align 16, !tbaa !7
  %arrayidx61.i1027 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 0
  %255 = load double, double* %arrayidx61.i1027, align 8, !tbaa !7
  store double %255, double* %arrayidx63.i452, align 8, !tbaa !7
  %arrayidx65.i1029 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 1
  %256 = load double, double* %arrayidx65.i1029, align 8, !tbaa !7
  store double %256, double* %arrayidx67.i454, align 16, !tbaa !7
  %arrayidx69.i1031 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 2
  %257 = load double, double* %arrayidx69.i1031, align 8, !tbaa !7
  store double %257, double* %arrayidx71.i456, align 8, !tbaa !7
  %arrayidx73.i1033 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 3
  %258 = load double, double* %arrayidx73.i1033, align 8, !tbaa !7
  store double %258, double* %arrayidx75.i458, align 16, !tbaa !7
  %arrayidx77.i1035 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 3, i64 4
  %259 = load double, double* %arrayidx77.i1035, align 8, !tbaa !7
  store double %259, double* %arrayidx79.i460, align 8, !tbaa !7
  %arrayidx81.i1037 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 0
  %260 = load double, double* %arrayidx81.i1037, align 8, !tbaa !7
  store double %260, double* %arrayidx83.i462, align 16, !tbaa !7
  %arrayidx85.i1039 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 1
  %261 = load double, double* %arrayidx85.i1039, align 8, !tbaa !7
  store double %261, double* %arrayidx87.i464, align 8, !tbaa !7
  %arrayidx89.i1041 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 2
  %262 = load double, double* %arrayidx89.i1041, align 8, !tbaa !7
  store double %262, double* %arrayidx91.i466, align 16, !tbaa !7
  %arrayidx93.i1043 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 3
  %263 = load double, double* %arrayidx93.i1043, align 8, !tbaa !7
  store double %263, double* %arrayidx95.i468, align 8, !tbaa !7
  %arrayidx97.i1045 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1222, i64 2, i64 4, i64 4
  %264 = load double, double* %arrayidx97.i1045, align 8, !tbaa !7
  store double %264, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay78 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1222, i64 %idxprom26, i64 %idxprom28, i64 0
  %265 = load double, double* %arraydecay78, align 8, !tbaa !7
  %arrayidx2.i989 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1222, i64 %idxprom26, i64 %idxprom28, i64 1
  %266 = load double, double* %arrayidx2.i989, align 8, !tbaa !7
  %arrayidx4.i991 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1222, i64 %idxprom26, i64 %idxprom28, i64 2
  %267 = load double, double* %arrayidx4.i991, align 8, !tbaa !7
  %arrayidx6.i993 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1222, i64 %idxprom26, i64 %idxprom28, i64 3
  %268 = load double, double* %arrayidx6.i993, align 8, !tbaa !7
  %arrayidx8.i995 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1222, i64 %idxprom26, i64 %idxprom28, i64 4
  %269 = load double, double* %arrayidx8.i995, align 8, !tbaa !7
  %neg.i932 = fneg double %190
  %270 = call double @llvm.fmuladd.f64(double %neg.i932, double %164, double %265) #7
  %neg7.i935 = fneg double %195
  %271 = call double @llvm.fmuladd.f64(double %neg7.i935, double %163, double %270) #7
  %neg11.i938 = fneg double %200
  %272 = call double @llvm.fmuladd.f64(double %neg11.i938, double %162, double %271) #7
  %neg15.i941 = fneg double %205
  %273 = call double @llvm.fmuladd.f64(double %neg15.i941, double %161, double %272) #7
  %neg19.i944 = fneg double %210
  %274 = call double @llvm.fmuladd.f64(double %neg19.i944, double %160, double %273) #7
  store double %274, double* %arraydecay24, align 16, !tbaa !7
  %neg25.i947 = fneg double %191
  %275 = call double @llvm.fmuladd.f64(double %neg25.i947, double %164, double %266) #7
  %neg29.i949 = fneg double %196
  %276 = call double @llvm.fmuladd.f64(double %neg29.i949, double %163, double %275) #7
  %neg33.i951 = fneg double %201
  %277 = call double @llvm.fmuladd.f64(double %neg33.i951, double %162, double %276) #7
  %neg37.i953 = fneg double %206
  %278 = call double @llvm.fmuladd.f64(double %neg37.i953, double %161, double %277) #7
  %neg41.i955 = fneg double %211
  %279 = call double @llvm.fmuladd.f64(double %neg41.i955, double %160, double %278) #7
  store double %279, double* %arrayidx3.i472, align 8, !tbaa !7
  %neg47.i958 = fneg double %192
  %280 = call double @llvm.fmuladd.f64(double %neg47.i958, double %164, double %267) #7
  %neg51.i960 = fneg double %197
  %281 = call double @llvm.fmuladd.f64(double %neg51.i960, double %163, double %280) #7
  %neg55.i962 = fneg double %202
  %282 = call double @llvm.fmuladd.f64(double %neg55.i962, double %162, double %281) #7
  %neg59.i964 = fneg double %207
  %283 = call double @llvm.fmuladd.f64(double %neg59.i964, double %161, double %282) #7
  %neg63.i966 = fneg double %212
  %284 = call double @llvm.fmuladd.f64(double %neg63.i966, double %160, double %283) #7
  store double %284, double* %arrayidx5.i474, align 16, !tbaa !7
  %neg69.i969 = fneg double %193
  %285 = call double @llvm.fmuladd.f64(double %neg69.i969, double %164, double %268) #7
  %neg73.i971 = fneg double %198
  %286 = call double @llvm.fmuladd.f64(double %neg73.i971, double %163, double %285) #7
  %neg77.i973 = fneg double %203
  %287 = call double @llvm.fmuladd.f64(double %neg77.i973, double %162, double %286) #7
  %neg81.i975 = fneg double %208
  %288 = call double @llvm.fmuladd.f64(double %neg81.i975, double %161, double %287) #7
  %neg85.i977 = fneg double %213
  %289 = call double @llvm.fmuladd.f64(double %neg85.i977, double %160, double %288) #7
  store double %289, double* %arrayidx7.i476, align 8, !tbaa !7
  %neg91.i980 = fneg double %194
  %290 = call double @llvm.fmuladd.f64(double %neg91.i980, double %164, double %269) #7
  %neg95.i982 = fneg double %199
  %291 = call double @llvm.fmuladd.f64(double %neg95.i982, double %163, double %290) #7
  %neg99.i984 = fneg double %204
  %292 = call double @llvm.fmuladd.f64(double %neg99.i984, double %162, double %291) #7
  %neg103.i986 = fneg double %209
  %293 = call double @llvm.fmuladd.f64(double %neg103.i986, double %161, double %292) #7
  %neg107.i988 = fneg double %214
  %294 = call double @llvm.fmuladd.f64(double %neg107.i988, double %160, double %293) #7
  store double %294, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_matmul_sub([5 x double]* nonnull %arraydecay56, [5 x double]* nonnull %arraydecay52, [5 x double]* nonnull %arraydecay)
  call void @p_binvcrhs([5 x double]* nonnull %arraydecay, [5 x double]* nonnull %arraydecay20, double* nonnull %arraydecay24)
  %295 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %295, double* %arrayidx1.i1047, align 8, !tbaa !7
  %296 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %296, double* %arrayidx5.i1049, align 8, !tbaa !7
  %297 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %297, double* %arrayidx9.i1051, align 8, !tbaa !7
  %298 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %298, double* %arrayidx13.i1053, align 8, !tbaa !7
  %299 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %299, double* %arrayidx17.i1055, align 8, !tbaa !7
  %300 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %300, double* %arrayidx21.i1057, align 8, !tbaa !7
  %301 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %301, double* %arrayidx25.i1059, align 8, !tbaa !7
  %302 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %302, double* %arrayidx29.i1061, align 8, !tbaa !7
  %303 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %303, double* %arrayidx33.i1063, align 8, !tbaa !7
  %304 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %304, double* %arrayidx37.i1065, align 8, !tbaa !7
  %305 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %305, double* %arrayidx41.i1067, align 8, !tbaa !7
  %306 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %306, double* %arrayidx45.i1069, align 8, !tbaa !7
  %307 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %307, double* %arrayidx49.i1071, align 8, !tbaa !7
  %308 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %308, double* %arrayidx53.i1073, align 8, !tbaa !7
  %309 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %309, double* %arrayidx57.i1075, align 8, !tbaa !7
  %310 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %310, double* %arrayidx61.i1077, align 8, !tbaa !7
  %311 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %311, double* %arrayidx65.i1079, align 8, !tbaa !7
  %312 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %312, double* %arrayidx69.i1081, align 8, !tbaa !7
  %313 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %313, double* %arrayidx73.i1083, align 8, !tbaa !7
  %314 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %314, double* %arrayidx77.i1085, align 8, !tbaa !7
  %315 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %315, double* %arrayidx81.i1087, align 8, !tbaa !7
  %316 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %316, double* %arrayidx85.i1089, align 8, !tbaa !7
  %317 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %317, double* %arrayidx89.i1091, align 8, !tbaa !7
  %318 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %318, double* %arrayidx93.i1093, align 8, !tbaa !7
  %319 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %319, double* %arrayidx97.i1095, align 8, !tbaa !7
  %320 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %320, double* %arrayidx1.i997, align 8, !tbaa !7
  %321 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %321, double* %arrayidx5.i999, align 8, !tbaa !7
  %322 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %322, double* %arrayidx9.i1001, align 8, !tbaa !7
  %323 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %323, double* %arrayidx13.i1003, align 8, !tbaa !7
  %324 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %324, double* %arrayidx17.i1005, align 8, !tbaa !7
  %325 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %325, double* %arrayidx21.i1007, align 8, !tbaa !7
  %326 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %326, double* %arrayidx25.i1009, align 8, !tbaa !7
  %327 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %327, double* %arrayidx29.i1011, align 8, !tbaa !7
  %328 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %328, double* %arrayidx33.i1013, align 8, !tbaa !7
  %329 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %329, double* %arrayidx37.i1015, align 8, !tbaa !7
  %330 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %330, double* %arrayidx41.i1017, align 8, !tbaa !7
  %331 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %331, double* %arrayidx45.i1019, align 8, !tbaa !7
  %332 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %332, double* %arrayidx49.i1021, align 8, !tbaa !7
  %333 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %333, double* %arrayidx53.i1023, align 8, !tbaa !7
  %334 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %334, double* %arrayidx57.i1025, align 8, !tbaa !7
  %335 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %335, double* %arrayidx61.i1027, align 8, !tbaa !7
  %336 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %336, double* %arrayidx65.i1029, align 8, !tbaa !7
  %337 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %337, double* %arrayidx69.i1031, align 8, !tbaa !7
  %338 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %338, double* %arrayidx73.i1033, align 8, !tbaa !7
  %339 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %339, double* %arrayidx77.i1035, align 8, !tbaa !7
  %340 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %340, double* %arrayidx81.i1037, align 8, !tbaa !7
  %341 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %341, double* %arrayidx85.i1039, align 8, !tbaa !7
  %342 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %342, double* %arrayidx89.i1041, align 8, !tbaa !7
  %343 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %343, double* %arrayidx93.i1043, align 8, !tbaa !7
  %344 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %344, double* %arrayidx97.i1045, align 8, !tbaa !7
  %345 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %345, double* %arraydecay78, align 8, !tbaa !7
  %346 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %346, double* %arrayidx2.i989, align 8, !tbaa !7
  %347 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %347, double* %arrayidx4.i991, align 8, !tbaa !7
  %348 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %348, double* %arrayidx6.i993, align 8, !tbaa !7
  %349 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %349, double* %arrayidx8.i995, align 8, !tbaa !7
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 1
  %exitcond1224.not = icmp eq i64 %indvars.iv.next1223, %wide.trip.count
  br i1 %exitcond1224.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %350 = phi double [ %159, %if.end ], [ %349, %for.body ]
  %351 = phi double [ %158, %if.end ], [ %348, %for.body ]
  %352 = phi double [ %157, %if.end ], [ %347, %for.body ]
  %353 = phi double [ %156, %if.end ], [ %346, %for.body ]
  %354 = phi double [ %155, %if.end ], [ %345, %for.body ]
  %355 = phi double [ %154, %if.end ], [ %344, %for.body ]
  %356 = phi double [ %153, %if.end ], [ %343, %for.body ]
  %357 = phi double [ %152, %if.end ], [ %342, %for.body ]
  %358 = phi double [ %151, %if.end ], [ %341, %for.body ]
  %359 = phi double [ %150, %if.end ], [ %340, %for.body ]
  %360 = phi double [ %149, %if.end ], [ %339, %for.body ]
  %361 = phi double [ %148, %if.end ], [ %338, %for.body ]
  %362 = phi double [ %147, %if.end ], [ %337, %for.body ]
  %363 = phi double [ %146, %if.end ], [ %336, %for.body ]
  %364 = phi double [ %145, %if.end ], [ %335, %for.body ]
  %365 = phi double [ %144, %if.end ], [ %334, %for.body ]
  %366 = phi double [ %143, %if.end ], [ %333, %for.body ]
  %367 = phi double [ %142, %if.end ], [ %332, %for.body ]
  %368 = phi double [ %141, %if.end ], [ %331, %for.body ]
  %369 = phi double [ %140, %if.end ], [ %330, %for.body ]
  %370 = phi double [ %139, %if.end ], [ %329, %for.body ]
  %371 = phi double [ %138, %if.end ], [ %328, %for.body ]
  %372 = phi double [ %137, %if.end ], [ %327, %for.body ]
  %373 = phi double [ %136, %if.end ], [ %326, %for.body ]
  %374 = phi double [ %135, %if.end ], [ %325, %for.body ]
  %375 = phi double [ %134, %if.end ], [ %324, %for.body ]
  %376 = phi double [ %133, %if.end ], [ %323, %for.body ]
  %377 = phi double [ %132, %if.end ], [ %322, %for.body ]
  %378 = phi double [ %131, %if.end ], [ %321, %for.body ]
  %379 = phi double [ %130, %if.end ], [ %320, %for.body ]
  %arraydecay106 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0
  %arrayidx3.i674 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 0
  store double %379, double* %arrayidx3.i674, align 16, !tbaa !7
  %arrayidx7.i676 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 1
  store double %378, double* %arrayidx7.i676, align 8, !tbaa !7
  %arrayidx11.i678 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 2
  store double %377, double* %arrayidx11.i678, align 16, !tbaa !7
  %arrayidx15.i680 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 3
  store double %376, double* %arrayidx15.i680, align 8, !tbaa !7
  %arrayidx19.i682 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 0, i64 4
  store double %375, double* %arrayidx19.i682, align 16, !tbaa !7
  %arrayidx23.i684 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 0
  store double %374, double* %arrayidx23.i684, align 8, !tbaa !7
  %arrayidx27.i686 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 1
  store double %373, double* %arrayidx27.i686, align 16, !tbaa !7
  %arrayidx31.i688 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 2
  store double %372, double* %arrayidx31.i688, align 8, !tbaa !7
  %arrayidx35.i690 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 3
  store double %371, double* %arrayidx35.i690, align 16, !tbaa !7
  %arrayidx39.i692 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 1, i64 4
  store double %370, double* %arrayidx39.i692, align 8, !tbaa !7
  %arrayidx43.i694 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 0
  store double %369, double* %arrayidx43.i694, align 16, !tbaa !7
  %arrayidx47.i696 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 1
  store double %368, double* %arrayidx47.i696, align 8, !tbaa !7
  %arrayidx51.i698 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 2
  store double %367, double* %arrayidx51.i698, align 16, !tbaa !7
  %arrayidx55.i700 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 3
  store double %366, double* %arrayidx55.i700, align 8, !tbaa !7
  %arrayidx59.i702 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 2, i64 4
  store double %365, double* %arrayidx59.i702, align 16, !tbaa !7
  %arrayidx63.i704 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 0
  store double %364, double* %arrayidx63.i704, align 8, !tbaa !7
  %arrayidx67.i706 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 1
  store double %363, double* %arrayidx67.i706, align 16, !tbaa !7
  %arrayidx71.i708 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 2
  store double %362, double* %arrayidx71.i708, align 8, !tbaa !7
  %arrayidx75.i710 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 3
  store double %361, double* %arrayidx75.i710, align 16, !tbaa !7
  %arrayidx79.i712 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 3, i64 4
  store double %360, double* %arrayidx79.i712, align 8, !tbaa !7
  %arrayidx83.i714 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 0
  store double %359, double* %arrayidx83.i714, align 16, !tbaa !7
  %arrayidx87.i716 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 1
  store double %358, double* %arrayidx87.i716, align 8, !tbaa !7
  %arrayidx91.i718 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 2
  store double %357, double* %arrayidx91.i718, align 16, !tbaa !7
  %arrayidx95.i720 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 3
  store double %356, double* %arrayidx95.i720, align 8, !tbaa !7
  %arrayidx99.i722 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsm1CC, i64 0, i64 4, i64 4
  store double %355, double* %arrayidx99.i722, align 16, !tbaa !7
  %arraydecay108 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  store double %354, double* %arraydecay108, align 16, !tbaa !7
  %arrayidx3.i666 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  store double %353, double* %arrayidx3.i666, align 8, !tbaa !7
  %arrayidx5.i668 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  store double %352, double* %arrayidx5.i668, align 16, !tbaa !7
  %arrayidx7.i670 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  store double %351, double* %arrayidx7.i670, align 8, !tbaa !7
  %arrayidx9.i672 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  store double %350, double* %arrayidx9.i672, align 16, !tbaa !7
  %arraydecay110 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0
  %idxprom111 = sext i32 %sub16 to i64
  %arrayidx1.i615 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 0
  %380 = load double, double* %arrayidx1.i615, align 8, !tbaa !7
  %arrayidx3.i616 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 0
  store double %380, double* %arrayidx3.i616, align 16, !tbaa !7
  %arrayidx5.i617 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 1
  %381 = load double, double* %arrayidx5.i617, align 8, !tbaa !7
  %arrayidx7.i618 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 1
  store double %381, double* %arrayidx7.i618, align 8, !tbaa !7
  %arrayidx9.i619 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 2
  %382 = load double, double* %arrayidx9.i619, align 8, !tbaa !7
  %arrayidx11.i620 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 2
  store double %382, double* %arrayidx11.i620, align 16, !tbaa !7
  %arrayidx13.i621 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 3
  %383 = load double, double* %arrayidx13.i621, align 8, !tbaa !7
  %arrayidx15.i622 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 3
  store double %383, double* %arrayidx15.i622, align 8, !tbaa !7
  %arrayidx17.i623 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 0, i64 4
  %384 = load double, double* %arrayidx17.i623, align 8, !tbaa !7
  %arrayidx19.i624 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 0, i64 4
  store double %384, double* %arrayidx19.i624, align 16, !tbaa !7
  %arrayidx21.i625 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 0
  %385 = load double, double* %arrayidx21.i625, align 8, !tbaa !7
  %arrayidx23.i626 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 0
  store double %385, double* %arrayidx23.i626, align 8, !tbaa !7
  %arrayidx25.i627 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 1
  %386 = load double, double* %arrayidx25.i627, align 8, !tbaa !7
  %arrayidx27.i628 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 1
  store double %386, double* %arrayidx27.i628, align 16, !tbaa !7
  %arrayidx29.i629 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 2
  %387 = load double, double* %arrayidx29.i629, align 8, !tbaa !7
  %arrayidx31.i630 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 2
  store double %387, double* %arrayidx31.i630, align 8, !tbaa !7
  %arrayidx33.i631 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 3
  %388 = load double, double* %arrayidx33.i631, align 8, !tbaa !7
  %arrayidx35.i632 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 3
  store double %388, double* %arrayidx35.i632, align 16, !tbaa !7
  %arrayidx37.i633 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 1, i64 4
  %389 = load double, double* %arrayidx37.i633, align 8, !tbaa !7
  %arrayidx39.i634 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 1, i64 4
  store double %389, double* %arrayidx39.i634, align 8, !tbaa !7
  %arrayidx41.i635 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 0
  %390 = load double, double* %arrayidx41.i635, align 8, !tbaa !7
  %arrayidx43.i636 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 0
  store double %390, double* %arrayidx43.i636, align 16, !tbaa !7
  %arrayidx45.i637 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 1
  %391 = load double, double* %arrayidx45.i637, align 8, !tbaa !7
  %arrayidx47.i638 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 1
  store double %391, double* %arrayidx47.i638, align 8, !tbaa !7
  %arrayidx49.i639 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 2
  %392 = load double, double* %arrayidx49.i639, align 8, !tbaa !7
  %arrayidx51.i640 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 2
  store double %392, double* %arrayidx51.i640, align 16, !tbaa !7
  %arrayidx53.i641 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 3
  %393 = load double, double* %arrayidx53.i641, align 8, !tbaa !7
  %arrayidx55.i642 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 3
  store double %393, double* %arrayidx55.i642, align 8, !tbaa !7
  %arrayidx57.i643 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 2, i64 4
  %394 = load double, double* %arrayidx57.i643, align 8, !tbaa !7
  %arrayidx59.i644 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 2, i64 4
  store double %394, double* %arrayidx59.i644, align 16, !tbaa !7
  %arrayidx61.i645 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 0
  %395 = load double, double* %arrayidx61.i645, align 8, !tbaa !7
  %arrayidx63.i646 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 0
  store double %395, double* %arrayidx63.i646, align 8, !tbaa !7
  %arrayidx65.i647 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 1
  %396 = load double, double* %arrayidx65.i647, align 8, !tbaa !7
  %arrayidx67.i648 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 1
  store double %396, double* %arrayidx67.i648, align 16, !tbaa !7
  %arrayidx69.i649 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 2
  %397 = load double, double* %arrayidx69.i649, align 8, !tbaa !7
  %arrayidx71.i650 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 2
  store double %397, double* %arrayidx71.i650, align 8, !tbaa !7
  %arrayidx73.i651 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 3
  %398 = load double, double* %arrayidx73.i651, align 8, !tbaa !7
  %arrayidx75.i652 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 3
  store double %398, double* %arrayidx75.i652, align 16, !tbaa !7
  %arrayidx77.i653 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 3, i64 4
  %399 = load double, double* %arrayidx77.i653, align 8, !tbaa !7
  %arrayidx79.i654 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 3, i64 4
  store double %399, double* %arrayidx79.i654, align 8, !tbaa !7
  %arrayidx81.i655 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 0
  %400 = load double, double* %arrayidx81.i655, align 8, !tbaa !7
  %arrayidx83.i656 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 0
  store double %400, double* %arrayidx83.i656, align 16, !tbaa !7
  %arrayidx85.i657 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 1
  %401 = load double, double* %arrayidx85.i657, align 8, !tbaa !7
  %arrayidx87.i658 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 1
  store double %401, double* %arrayidx87.i658, align 8, !tbaa !7
  %arrayidx89.i659 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 2
  %402 = load double, double* %arrayidx89.i659, align 8, !tbaa !7
  %arrayidx91.i660 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 2
  store double %402, double* %arrayidx91.i660, align 16, !tbaa !7
  %arrayidx93.i661 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 3
  %403 = load double, double* %arrayidx93.i661, align 8, !tbaa !7
  %arrayidx95.i662 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 3
  store double %403, double* %arrayidx95.i662, align 8, !tbaa !7
  %arrayidx97.i663 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 0, i64 4, i64 4
  %404 = load double, double* %arrayidx97.i663, align 8, !tbaa !7
  %arrayidx99.i664 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p_lhsAA, i64 0, i64 4, i64 4
  store double %404, double* %arrayidx99.i664, align 16, !tbaa !7
  %arrayidx1.i565 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 0
  %405 = load double, double* %arrayidx1.i565, align 8, !tbaa !7
  store double %405, double* %arrayidx3.i, align 16, !tbaa !7
  %arrayidx5.i567 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 1
  %406 = load double, double* %arrayidx5.i567, align 8, !tbaa !7
  store double %406, double* %arrayidx7.i, align 8, !tbaa !7
  %arrayidx9.i569 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 2
  %407 = load double, double* %arrayidx9.i569, align 8, !tbaa !7
  store double %407, double* %arrayidx11.i, align 16, !tbaa !7
  %arrayidx13.i571 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 3
  %408 = load double, double* %arrayidx13.i571, align 8, !tbaa !7
  store double %408, double* %arrayidx15.i, align 8, !tbaa !7
  %arrayidx17.i573 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 0, i64 4
  %409 = load double, double* %arrayidx17.i573, align 8, !tbaa !7
  store double %409, double* %arrayidx19.i, align 16, !tbaa !7
  %arrayidx21.i575 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 0
  %410 = load double, double* %arrayidx21.i575, align 8, !tbaa !7
  store double %410, double* %arrayidx23.i, align 8, !tbaa !7
  %arrayidx25.i577 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 1
  %411 = load double, double* %arrayidx25.i577, align 8, !tbaa !7
  store double %411, double* %arrayidx27.i, align 16, !tbaa !7
  %arrayidx29.i579 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 2
  %412 = load double, double* %arrayidx29.i579, align 8, !tbaa !7
  store double %412, double* %arrayidx31.i, align 8, !tbaa !7
  %arrayidx33.i581 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 3
  %413 = load double, double* %arrayidx33.i581, align 8, !tbaa !7
  store double %413, double* %arrayidx35.i, align 16, !tbaa !7
  %arrayidx37.i583 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 1, i64 4
  %414 = load double, double* %arrayidx37.i583, align 8, !tbaa !7
  store double %414, double* %arrayidx39.i, align 8, !tbaa !7
  %arrayidx41.i585 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 0
  %415 = load double, double* %arrayidx41.i585, align 8, !tbaa !7
  store double %415, double* %arrayidx43.i, align 16, !tbaa !7
  %arrayidx45.i587 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 1
  %416 = load double, double* %arrayidx45.i587, align 8, !tbaa !7
  store double %416, double* %arrayidx47.i, align 8, !tbaa !7
  %arrayidx49.i589 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 2
  %417 = load double, double* %arrayidx49.i589, align 8, !tbaa !7
  store double %417, double* %arrayidx51.i, align 16, !tbaa !7
  %arrayidx53.i591 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 3
  %418 = load double, double* %arrayidx53.i591, align 8, !tbaa !7
  store double %418, double* %arrayidx55.i, align 8, !tbaa !7
  %arrayidx57.i593 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 2, i64 4
  %419 = load double, double* %arrayidx57.i593, align 8, !tbaa !7
  store double %419, double* %arrayidx59.i, align 16, !tbaa !7
  %arrayidx61.i595 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 0
  %420 = load double, double* %arrayidx61.i595, align 8, !tbaa !7
  store double %420, double* %arrayidx63.i, align 8, !tbaa !7
  %arrayidx65.i597 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 1
  %421 = load double, double* %arrayidx65.i597, align 8, !tbaa !7
  store double %421, double* %arrayidx67.i, align 16, !tbaa !7
  %arrayidx69.i599 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 2
  %422 = load double, double* %arrayidx69.i599, align 8, !tbaa !7
  store double %422, double* %arrayidx71.i, align 8, !tbaa !7
  %arrayidx73.i601 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 3
  %423 = load double, double* %arrayidx73.i601, align 8, !tbaa !7
  store double %423, double* %arrayidx75.i, align 16, !tbaa !7
  %arrayidx77.i603 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 3, i64 4
  %424 = load double, double* %arrayidx77.i603, align 8, !tbaa !7
  store double %424, double* %arrayidx79.i, align 8, !tbaa !7
  %arrayidx81.i605 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 0
  %425 = load double, double* %arrayidx81.i605, align 8, !tbaa !7
  store double %425, double* %arrayidx83.i, align 16, !tbaa !7
  %arrayidx85.i607 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 1
  %426 = load double, double* %arrayidx85.i607, align 8, !tbaa !7
  store double %426, double* %arrayidx87.i, align 8, !tbaa !7
  %arrayidx89.i609 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 2
  %427 = load double, double* %arrayidx89.i609, align 8, !tbaa !7
  store double %427, double* %arrayidx91.i, align 16, !tbaa !7
  %arrayidx93.i611 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 3
  %428 = load double, double* %arrayidx93.i611, align 8, !tbaa !7
  store double %428, double* %arrayidx95.i, align 8, !tbaa !7
  %arrayidx97.i613 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 1, i64 4, i64 4
  %429 = load double, double* %arrayidx97.i613, align 8, !tbaa !7
  store double %429, double* %arrayidx99.i, align 16, !tbaa !7
  %arrayidx1.i515 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 0
  %430 = load double, double* %arrayidx1.i515, align 8, !tbaa !7
  store double %430, double* %arrayidx3.i422, align 16, !tbaa !7
  %arrayidx5.i517 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 1
  %431 = load double, double* %arrayidx5.i517, align 8, !tbaa !7
  store double %431, double* %arrayidx7.i424, align 8, !tbaa !7
  %arrayidx9.i519 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 2
  %432 = load double, double* %arrayidx9.i519, align 8, !tbaa !7
  store double %432, double* %arrayidx11.i426, align 16, !tbaa !7
  %arrayidx13.i521 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 3
  %433 = load double, double* %arrayidx13.i521, align 8, !tbaa !7
  store double %433, double* %arrayidx15.i428, align 8, !tbaa !7
  %arrayidx17.i523 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 0, i64 4
  %434 = load double, double* %arrayidx17.i523, align 8, !tbaa !7
  store double %434, double* %arrayidx19.i430, align 16, !tbaa !7
  %arrayidx21.i525 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 0
  %435 = load double, double* %arrayidx21.i525, align 8, !tbaa !7
  store double %435, double* %arrayidx23.i432, align 8, !tbaa !7
  %arrayidx25.i527 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 1
  %436 = load double, double* %arrayidx25.i527, align 8, !tbaa !7
  store double %436, double* %arrayidx27.i434, align 16, !tbaa !7
  %arrayidx29.i529 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 2
  %437 = load double, double* %arrayidx29.i529, align 8, !tbaa !7
  store double %437, double* %arrayidx31.i436, align 8, !tbaa !7
  %arrayidx33.i531 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 3
  %438 = load double, double* %arrayidx33.i531, align 8, !tbaa !7
  store double %438, double* %arrayidx35.i438, align 16, !tbaa !7
  %arrayidx37.i533 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 1, i64 4
  %439 = load double, double* %arrayidx37.i533, align 8, !tbaa !7
  store double %439, double* %arrayidx39.i440, align 8, !tbaa !7
  %arrayidx41.i535 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 0
  %440 = load double, double* %arrayidx41.i535, align 8, !tbaa !7
  store double %440, double* %arrayidx43.i442, align 16, !tbaa !7
  %arrayidx45.i537 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 1
  %441 = load double, double* %arrayidx45.i537, align 8, !tbaa !7
  store double %441, double* %arrayidx47.i444, align 8, !tbaa !7
  %arrayidx49.i539 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 2
  %442 = load double, double* %arrayidx49.i539, align 8, !tbaa !7
  store double %442, double* %arrayidx51.i446, align 16, !tbaa !7
  %arrayidx53.i541 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 3
  %443 = load double, double* %arrayidx53.i541, align 8, !tbaa !7
  store double %443, double* %arrayidx55.i448, align 8, !tbaa !7
  %arrayidx57.i543 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 2, i64 4
  %444 = load double, double* %arrayidx57.i543, align 8, !tbaa !7
  store double %444, double* %arrayidx59.i450, align 16, !tbaa !7
  %arrayidx61.i545 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 0
  %445 = load double, double* %arrayidx61.i545, align 8, !tbaa !7
  store double %445, double* %arrayidx63.i452, align 8, !tbaa !7
  %arrayidx65.i547 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 1
  %446 = load double, double* %arrayidx65.i547, align 8, !tbaa !7
  store double %446, double* %arrayidx67.i454, align 16, !tbaa !7
  %arrayidx69.i549 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 2
  %447 = load double, double* %arrayidx69.i549, align 8, !tbaa !7
  store double %447, double* %arrayidx71.i456, align 8, !tbaa !7
  %arrayidx73.i551 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 3
  %448 = load double, double* %arrayidx73.i551, align 8, !tbaa !7
  store double %448, double* %arrayidx75.i458, align 16, !tbaa !7
  %arrayidx77.i553 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 3, i64 4
  %449 = load double, double* %arrayidx77.i553, align 8, !tbaa !7
  store double %449, double* %arrayidx79.i460, align 8, !tbaa !7
  %arrayidx81.i555 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 0
  %450 = load double, double* %arrayidx81.i555, align 8, !tbaa !7
  store double %450, double* %arrayidx83.i462, align 16, !tbaa !7
  %arrayidx85.i557 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 1
  %451 = load double, double* %arrayidx85.i557, align 8, !tbaa !7
  store double %451, double* %arrayidx87.i464, align 8, !tbaa !7
  %arrayidx89.i559 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 2
  %452 = load double, double* %arrayidx89.i559, align 8, !tbaa !7
  store double %452, double* %arrayidx91.i466, align 16, !tbaa !7
  %arrayidx93.i561 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 3
  %453 = load double, double* %arrayidx93.i561, align 8, !tbaa !7
  store double %453, double* %arrayidx95.i468, align 8, !tbaa !7
  %arrayidx97.i563 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %idxprom111, i64 2, i64 4, i64 4
  %454 = load double, double* %arrayidx97.i563, align 8, !tbaa !7
  store double %454, double* %arrayidx99.i470, align 16, !tbaa !7
  %arraydecay132 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom111, i64 %idxprom26, i64 %idxprom28, i64 0
  %455 = load double, double* %arraydecay132, align 8, !tbaa !7
  %arrayidx2.i507 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom111, i64 %idxprom26, i64 %idxprom28, i64 1
  %456 = load double, double* %arrayidx2.i507, align 8, !tbaa !7
  %arrayidx4.i509 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom111, i64 %idxprom26, i64 %idxprom28, i64 2
  %457 = load double, double* %arrayidx4.i509, align 8, !tbaa !7
  %arrayidx6.i511 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom111, i64 %idxprom26, i64 %idxprom28, i64 3
  %458 = load double, double* %arrayidx6.i511, align 8, !tbaa !7
  %arrayidx8.i513 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %idxprom111, i64 %idxprom26, i64 %idxprom28, i64 4
  %459 = load double, double* %arrayidx8.i513, align 8, !tbaa !7
  %neg.i = fneg double %380
  %460 = call double @llvm.fmuladd.f64(double %neg.i, double %354, double %455) #7
  %neg7.i = fneg double %385
  %461 = call double @llvm.fmuladd.f64(double %neg7.i, double %353, double %460) #7
  %neg11.i = fneg double %390
  %462 = call double @llvm.fmuladd.f64(double %neg11.i, double %352, double %461) #7
  %neg15.i = fneg double %395
  %463 = call double @llvm.fmuladd.f64(double %neg15.i, double %351, double %462) #7
  %neg19.i = fneg double %400
  %464 = call double @llvm.fmuladd.f64(double %neg19.i, double %350, double %463) #7
  store double %464, double* %arraydecay24, align 16, !tbaa !7
  %neg25.i = fneg double %381
  %465 = call double @llvm.fmuladd.f64(double %neg25.i, double %354, double %456) #7
  %neg29.i = fneg double %386
  %466 = call double @llvm.fmuladd.f64(double %neg29.i, double %353, double %465) #7
  %neg33.i = fneg double %391
  %467 = call double @llvm.fmuladd.f64(double %neg33.i, double %352, double %466) #7
  %neg37.i = fneg double %396
  %468 = call double @llvm.fmuladd.f64(double %neg37.i, double %351, double %467) #7
  %neg41.i = fneg double %401
  %469 = call double @llvm.fmuladd.f64(double %neg41.i, double %350, double %468) #7
  store double %469, double* %arrayidx3.i472, align 8, !tbaa !7
  %neg47.i = fneg double %382
  %470 = call double @llvm.fmuladd.f64(double %neg47.i, double %354, double %457) #7
  %neg51.i = fneg double %387
  %471 = call double @llvm.fmuladd.f64(double %neg51.i, double %353, double %470) #7
  %neg55.i = fneg double %392
  %472 = call double @llvm.fmuladd.f64(double %neg55.i, double %352, double %471) #7
  %neg59.i = fneg double %397
  %473 = call double @llvm.fmuladd.f64(double %neg59.i, double %351, double %472) #7
  %neg63.i = fneg double %402
  %474 = call double @llvm.fmuladd.f64(double %neg63.i, double %350, double %473) #7
  store double %474, double* %arrayidx5.i474, align 16, !tbaa !7
  %neg69.i = fneg double %383
  %475 = call double @llvm.fmuladd.f64(double %neg69.i, double %354, double %458) #7
  %neg73.i = fneg double %388
  %476 = call double @llvm.fmuladd.f64(double %neg73.i, double %353, double %475) #7
  %neg77.i = fneg double %393
  %477 = call double @llvm.fmuladd.f64(double %neg77.i, double %352, double %476) #7
  %neg81.i = fneg double %398
  %478 = call double @llvm.fmuladd.f64(double %neg81.i, double %351, double %477) #7
  %neg85.i = fneg double %403
  %479 = call double @llvm.fmuladd.f64(double %neg85.i, double %350, double %478) #7
  store double %479, double* %arrayidx7.i476, align 8, !tbaa !7
  %neg91.i = fneg double %384
  %480 = call double @llvm.fmuladd.f64(double %neg91.i, double %354, double %459) #7
  %neg95.i = fneg double %389
  %481 = call double @llvm.fmuladd.f64(double %neg95.i, double %353, double %480) #7
  %neg99.i = fneg double %394
  %482 = call double @llvm.fmuladd.f64(double %neg99.i, double %352, double %481) #7
  %neg103.i = fneg double %399
  %483 = call double @llvm.fmuladd.f64(double %neg103.i, double %351, double %482) #7
  %neg107.i = fneg double %404
  %484 = call double @llvm.fmuladd.f64(double %neg107.i, double %350, double %483) #7
  store double %484, double* %arrayidx9.i478, align 16, !tbaa !7
  call void @p_matmul_sub([5 x double]* nonnull %arraydecay110, [5 x double]* nonnull %arraydecay106, [5 x double]* nonnull %arraydecay)
  call void @p_binvrhs([5 x double]* nonnull %arraydecay, double* nonnull %arraydecay24)
  %485 = load double, double* %arrayidx3.i, align 16, !tbaa !7
  store double %485, double* %arrayidx1.i565, align 8, !tbaa !7
  %486 = load double, double* %arrayidx7.i, align 8, !tbaa !7
  store double %486, double* %arrayidx5.i567, align 8, !tbaa !7
  %487 = load double, double* %arrayidx11.i, align 16, !tbaa !7
  store double %487, double* %arrayidx9.i569, align 8, !tbaa !7
  %488 = load double, double* %arrayidx15.i, align 8, !tbaa !7
  store double %488, double* %arrayidx13.i571, align 8, !tbaa !7
  %489 = load double, double* %arrayidx19.i, align 16, !tbaa !7
  store double %489, double* %arrayidx17.i573, align 8, !tbaa !7
  %490 = load double, double* %arrayidx23.i, align 8, !tbaa !7
  store double %490, double* %arrayidx21.i575, align 8, !tbaa !7
  %491 = load double, double* %arrayidx27.i, align 16, !tbaa !7
  store double %491, double* %arrayidx25.i577, align 8, !tbaa !7
  %492 = load double, double* %arrayidx31.i, align 8, !tbaa !7
  store double %492, double* %arrayidx29.i579, align 8, !tbaa !7
  %493 = load double, double* %arrayidx35.i, align 16, !tbaa !7
  store double %493, double* %arrayidx33.i581, align 8, !tbaa !7
  %494 = load double, double* %arrayidx39.i, align 8, !tbaa !7
  store double %494, double* %arrayidx37.i583, align 8, !tbaa !7
  %495 = load double, double* %arrayidx43.i, align 16, !tbaa !7
  store double %495, double* %arrayidx41.i585, align 8, !tbaa !7
  %496 = load double, double* %arrayidx47.i, align 8, !tbaa !7
  store double %496, double* %arrayidx45.i587, align 8, !tbaa !7
  %497 = load double, double* %arrayidx51.i, align 16, !tbaa !7
  store double %497, double* %arrayidx49.i589, align 8, !tbaa !7
  %498 = load double, double* %arrayidx55.i, align 8, !tbaa !7
  store double %498, double* %arrayidx53.i591, align 8, !tbaa !7
  %499 = load double, double* %arrayidx59.i, align 16, !tbaa !7
  store double %499, double* %arrayidx57.i593, align 8, !tbaa !7
  %500 = load double, double* %arrayidx63.i, align 8, !tbaa !7
  store double %500, double* %arrayidx61.i595, align 8, !tbaa !7
  %501 = load double, double* %arrayidx67.i, align 16, !tbaa !7
  store double %501, double* %arrayidx65.i597, align 8, !tbaa !7
  %502 = load double, double* %arrayidx71.i, align 8, !tbaa !7
  store double %502, double* %arrayidx69.i599, align 8, !tbaa !7
  %503 = load double, double* %arrayidx75.i, align 16, !tbaa !7
  store double %503, double* %arrayidx73.i601, align 8, !tbaa !7
  %504 = load double, double* %arrayidx79.i, align 8, !tbaa !7
  store double %504, double* %arrayidx77.i603, align 8, !tbaa !7
  %505 = load double, double* %arrayidx83.i, align 16, !tbaa !7
  store double %505, double* %arrayidx81.i605, align 8, !tbaa !7
  %506 = load double, double* %arrayidx87.i, align 8, !tbaa !7
  store double %506, double* %arrayidx85.i607, align 8, !tbaa !7
  %507 = load double, double* %arrayidx91.i, align 16, !tbaa !7
  store double %507, double* %arrayidx89.i609, align 8, !tbaa !7
  %508 = load double, double* %arrayidx95.i, align 8, !tbaa !7
  store double %508, double* %arrayidx93.i611, align 8, !tbaa !7
  %509 = load double, double* %arrayidx99.i, align 16, !tbaa !7
  store double %509, double* %arrayidx97.i613, align 8, !tbaa !7
  %510 = load double, double* %arrayidx3.i422, align 16, !tbaa !7
  store double %510, double* %arrayidx1.i515, align 8, !tbaa !7
  %511 = load double, double* %arrayidx7.i424, align 8, !tbaa !7
  store double %511, double* %arrayidx5.i517, align 8, !tbaa !7
  %512 = load double, double* %arrayidx11.i426, align 16, !tbaa !7
  store double %512, double* %arrayidx9.i519, align 8, !tbaa !7
  %513 = load double, double* %arrayidx15.i428, align 8, !tbaa !7
  store double %513, double* %arrayidx13.i521, align 8, !tbaa !7
  %514 = load double, double* %arrayidx19.i430, align 16, !tbaa !7
  store double %514, double* %arrayidx17.i523, align 8, !tbaa !7
  %515 = load double, double* %arrayidx23.i432, align 8, !tbaa !7
  store double %515, double* %arrayidx21.i525, align 8, !tbaa !7
  %516 = load double, double* %arrayidx27.i434, align 16, !tbaa !7
  store double %516, double* %arrayidx25.i527, align 8, !tbaa !7
  %517 = load double, double* %arrayidx31.i436, align 8, !tbaa !7
  store double %517, double* %arrayidx29.i529, align 8, !tbaa !7
  %518 = load double, double* %arrayidx35.i438, align 16, !tbaa !7
  store double %518, double* %arrayidx33.i531, align 8, !tbaa !7
  %519 = load double, double* %arrayidx39.i440, align 8, !tbaa !7
  store double %519, double* %arrayidx37.i533, align 8, !tbaa !7
  %520 = load double, double* %arrayidx43.i442, align 16, !tbaa !7
  store double %520, double* %arrayidx41.i535, align 8, !tbaa !7
  %521 = load double, double* %arrayidx47.i444, align 8, !tbaa !7
  store double %521, double* %arrayidx45.i537, align 8, !tbaa !7
  %522 = load double, double* %arrayidx51.i446, align 16, !tbaa !7
  store double %522, double* %arrayidx49.i539, align 8, !tbaa !7
  %523 = load double, double* %arrayidx55.i448, align 8, !tbaa !7
  store double %523, double* %arrayidx53.i541, align 8, !tbaa !7
  %524 = load double, double* %arrayidx59.i450, align 16, !tbaa !7
  store double %524, double* %arrayidx57.i543, align 8, !tbaa !7
  %525 = load double, double* %arrayidx63.i452, align 8, !tbaa !7
  store double %525, double* %arrayidx61.i545, align 8, !tbaa !7
  %526 = load double, double* %arrayidx67.i454, align 16, !tbaa !7
  store double %526, double* %arrayidx65.i547, align 8, !tbaa !7
  %527 = load double, double* %arrayidx71.i456, align 8, !tbaa !7
  store double %527, double* %arrayidx69.i549, align 8, !tbaa !7
  %528 = load double, double* %arrayidx75.i458, align 16, !tbaa !7
  store double %528, double* %arrayidx73.i551, align 8, !tbaa !7
  %529 = load double, double* %arrayidx79.i460, align 8, !tbaa !7
  store double %529, double* %arrayidx77.i553, align 8, !tbaa !7
  %530 = load double, double* %arrayidx83.i462, align 16, !tbaa !7
  store double %530, double* %arrayidx81.i555, align 8, !tbaa !7
  %531 = load double, double* %arrayidx87.i464, align 8, !tbaa !7
  store double %531, double* %arrayidx85.i557, align 8, !tbaa !7
  %532 = load double, double* %arrayidx91.i466, align 16, !tbaa !7
  store double %532, double* %arrayidx89.i559, align 8, !tbaa !7
  %533 = load double, double* %arrayidx95.i468, align 8, !tbaa !7
  store double %533, double* %arrayidx93.i561, align 8, !tbaa !7
  %534 = load double, double* %arrayidx99.i470, align 16, !tbaa !7
  store double %534, double* %arrayidx97.i563, align 8, !tbaa !7
  %535 = load double, double* %arraydecay24, align 16, !tbaa !7
  store double %535, double* %arraydecay132, align 8, !tbaa !7
  %536 = load double, double* %arrayidx3.i472, align 8, !tbaa !7
  store double %536, double* %arrayidx2.i507, align 8, !tbaa !7
  %537 = load double, double* %arrayidx5.i474, align 16, !tbaa !7
  store double %537, double* %arrayidx4.i509, align 8, !tbaa !7
  %538 = load double, double* %arrayidx7.i476, align 8, !tbaa !7
  store double %538, double* %arrayidx6.i511, align 8, !tbaa !7
  %539 = load double, double* %arrayidx9.i478, align 16, !tbaa !7
  store double %539, double* %arrayidx8.i513, align 8, !tbaa !7
  %cmp1611215 = icmp sgt i32 %gp2, 1
  br i1 %cmp1611215, label %for.cond164.preheader.preheader, label %cleanup

for.cond164.preheader.preheader:                  ; preds = %for.end
  %540 = add nsw i32 %gp2, -2
  %541 = sext i32 %540 to i64
  %arrayidx177 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 0
  %arrayidx177.1 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 1
  %arrayidx177.2 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 2
  %arrayidx177.3 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 3
  %arrayidx177.4 = getelementptr inbounds [5 x double], [5 x double]* %p_rhsm1, i64 0, i64 4
  br label %for.cond164.preheader

for.cond164.preheader:                            ; preds = %for.cond164.preheader.preheader, %for.cond164.preheader
  %542 = phi double [ %539, %for.cond164.preheader.preheader ], [ %601, %for.cond164.preheader ]
  %543 = phi double [ %538, %for.cond164.preheader.preheader ], [ %590, %for.cond164.preheader ]
  %544 = phi double [ %537, %for.cond164.preheader.preheader ], [ %579, %for.cond164.preheader ]
  %545 = phi double [ %536, %for.cond164.preheader.preheader ], [ %568, %for.cond164.preheader ]
  %546 = phi double [ %535, %for.cond164.preheader.preheader ], [ %557, %for.cond164.preheader ]
  %indvars.iv1220 = phi i64 [ %541, %for.cond164.preheader.preheader ], [ %indvars.iv.next1221, %for.cond164.preheader ]
  %arrayidx175 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1220, i64 %idxprom26, i64 %idxprom28, i64 0
  %547 = load double, double* %arrayidx175, align 8, !tbaa !7
  %arrayidx190 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 0
  %548 = load double, double* %arrayidx190, align 8, !tbaa !7
  %neg = fneg double %548
  %549 = call double @llvm.fmuladd.f64(double %neg, double %546, double %547)
  %arrayidx190.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 0
  %550 = load double, double* %arrayidx190.1, align 8, !tbaa !7
  %neg.1 = fneg double %550
  %551 = call double @llvm.fmuladd.f64(double %neg.1, double %545, double %549)
  %arrayidx190.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 0
  %552 = load double, double* %arrayidx190.2, align 8, !tbaa !7
  %neg.2 = fneg double %552
  %553 = call double @llvm.fmuladd.f64(double %neg.2, double %544, double %551)
  %arrayidx190.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 0
  %554 = load double, double* %arrayidx190.3, align 8, !tbaa !7
  %neg.3 = fneg double %554
  %555 = call double @llvm.fmuladd.f64(double %neg.3, double %543, double %553)
  %arrayidx190.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 0
  %556 = load double, double* %arrayidx190.4, align 8, !tbaa !7
  %neg.4 = fneg double %556
  %557 = call double @llvm.fmuladd.f64(double %neg.4, double %542, double %555)
  store double %557, double* %arrayidx175, align 8, !tbaa !7
  %arrayidx175.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1220, i64 %idxprom26, i64 %idxprom28, i64 1
  %558 = load double, double* %arrayidx175.1, align 8, !tbaa !7
  %arrayidx190.11312 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 1
  %559 = load double, double* %arrayidx190.11312, align 8, !tbaa !7
  %neg.11313 = fneg double %559
  %560 = call double @llvm.fmuladd.f64(double %neg.11313, double %546, double %558)
  %arrayidx190.1.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 1
  %561 = load double, double* %arrayidx190.1.1, align 8, !tbaa !7
  %neg.1.1 = fneg double %561
  %562 = call double @llvm.fmuladd.f64(double %neg.1.1, double %545, double %560)
  %arrayidx190.2.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 1
  %563 = load double, double* %arrayidx190.2.1, align 8, !tbaa !7
  %neg.2.1 = fneg double %563
  %564 = call double @llvm.fmuladd.f64(double %neg.2.1, double %544, double %562)
  %arrayidx190.3.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 1
  %565 = load double, double* %arrayidx190.3.1, align 8, !tbaa !7
  %neg.3.1 = fneg double %565
  %566 = call double @llvm.fmuladd.f64(double %neg.3.1, double %543, double %564)
  %arrayidx190.4.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 1
  %567 = load double, double* %arrayidx190.4.1, align 8, !tbaa !7
  %neg.4.1 = fneg double %567
  %568 = call double @llvm.fmuladd.f64(double %neg.4.1, double %542, double %566)
  store double %568, double* %arrayidx175.1, align 8, !tbaa !7
  %arrayidx175.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1220, i64 %idxprom26, i64 %idxprom28, i64 2
  %569 = load double, double* %arrayidx175.2, align 8, !tbaa !7
  %arrayidx190.21314 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 2
  %570 = load double, double* %arrayidx190.21314, align 8, !tbaa !7
  %neg.21315 = fneg double %570
  %571 = call double @llvm.fmuladd.f64(double %neg.21315, double %546, double %569)
  %arrayidx190.1.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 2
  %572 = load double, double* %arrayidx190.1.2, align 8, !tbaa !7
  %neg.1.2 = fneg double %572
  %573 = call double @llvm.fmuladd.f64(double %neg.1.2, double %545, double %571)
  %arrayidx190.2.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 2
  %574 = load double, double* %arrayidx190.2.2, align 8, !tbaa !7
  %neg.2.2 = fneg double %574
  %575 = call double @llvm.fmuladd.f64(double %neg.2.2, double %544, double %573)
  %arrayidx190.3.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 2
  %576 = load double, double* %arrayidx190.3.2, align 8, !tbaa !7
  %neg.3.2 = fneg double %576
  %577 = call double @llvm.fmuladd.f64(double %neg.3.2, double %543, double %575)
  %arrayidx190.4.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 2
  %578 = load double, double* %arrayidx190.4.2, align 8, !tbaa !7
  %neg.4.2 = fneg double %578
  %579 = call double @llvm.fmuladd.f64(double %neg.4.2, double %542, double %577)
  store double %579, double* %arrayidx175.2, align 8, !tbaa !7
  %arrayidx175.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1220, i64 %idxprom26, i64 %idxprom28, i64 3
  %580 = load double, double* %arrayidx175.3, align 8, !tbaa !7
  %arrayidx190.31316 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 3
  %581 = load double, double* %arrayidx190.31316, align 8, !tbaa !7
  %neg.31317 = fneg double %581
  %582 = call double @llvm.fmuladd.f64(double %neg.31317, double %546, double %580)
  %arrayidx190.1.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 3
  %583 = load double, double* %arrayidx190.1.3, align 8, !tbaa !7
  %neg.1.3 = fneg double %583
  %584 = call double @llvm.fmuladd.f64(double %neg.1.3, double %545, double %582)
  %arrayidx190.2.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 3
  %585 = load double, double* %arrayidx190.2.3, align 8, !tbaa !7
  %neg.2.3 = fneg double %585
  %586 = call double @llvm.fmuladd.f64(double %neg.2.3, double %544, double %584)
  %arrayidx190.3.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 3
  %587 = load double, double* %arrayidx190.3.3, align 8, !tbaa !7
  %neg.3.3 = fneg double %587
  %588 = call double @llvm.fmuladd.f64(double %neg.3.3, double %543, double %586)
  %arrayidx190.4.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 3
  %589 = load double, double* %arrayidx190.4.3, align 8, !tbaa !7
  %neg.4.3 = fneg double %589
  %590 = call double @llvm.fmuladd.f64(double %neg.4.3, double %542, double %588)
  store double %590, double* %arrayidx175.3, align 8, !tbaa !7
  %arrayidx175.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %8, i64 %indvars.iv1220, i64 %idxprom26, i64 %idxprom28, i64 4
  %591 = load double, double* %arrayidx175.4, align 8, !tbaa !7
  %arrayidx190.41318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 0, i64 4
  %592 = load double, double* %arrayidx190.41318, align 8, !tbaa !7
  %neg.41319 = fneg double %592
  %593 = call double @llvm.fmuladd.f64(double %neg.41319, double %546, double %591)
  %arrayidx190.1.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 1, i64 4
  %594 = load double, double* %arrayidx190.1.4, align 8, !tbaa !7
  %neg.1.4 = fneg double %594
  %595 = call double @llvm.fmuladd.f64(double %neg.1.4, double %545, double %593)
  %arrayidx190.2.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 2, i64 4
  %596 = load double, double* %arrayidx190.2.4, align 8, !tbaa !7
  %neg.2.4 = fneg double %596
  %597 = call double @llvm.fmuladd.f64(double %neg.2.4, double %544, double %595)
  %arrayidx190.3.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 3, i64 4
  %598 = load double, double* %arrayidx190.3.4, align 8, !tbaa !7
  %neg.3.4 = fneg double %598
  %599 = call double @llvm.fmuladd.f64(double %neg.3.4, double %543, double %597)
  %arrayidx190.4.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %9, i64 %indvars.iv1220, i64 2, i64 4, i64 4
  %600 = load double, double* %arrayidx190.4.4, align 8, !tbaa !7
  %neg.4.4 = fneg double %600
  %601 = call double @llvm.fmuladd.f64(double %neg.4.4, double %542, double %599)
  store double %601, double* %arrayidx175.4, align 8, !tbaa !7
  %indvars.iv.next1221 = add nsw i64 %indvars.iv1220, -1
  %cmp161 = icmp sgt i64 %indvars.iv1220, 0
  br i1 %cmp161, label %for.cond164.preheader, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.cond164.preheader
  store double %557, double* %arrayidx177, align 16, !tbaa !7
  store double %568, double* %arrayidx177.1, align 8, !tbaa !7
  store double %579, double* %arrayidx177.2, align 16, !tbaa !7
  store double %590, double* %arrayidx177.3, align 8, !tbaa !7
  store double %601, double* %arrayidx177.4, align 16, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %entry, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind uwtable
define dso_local spir_kernel void @add(double* nocapture %g_u, double* nocapture readonly %g_rhs, i32 %gp0, i32 %gp1, i32 %gp2) local_unnamed_addr #0 !kernel_arg_addr_space !11 !kernel_arg_access_qual !12 !kernel_arg_type !13 !kernel_arg_base_type !13 !kernel_arg_type_qual !31 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #6
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %sub = add nsw i32 %gp2, -2
  %cmp = icmp sgt i32 %conv, %sub
  %sub8 = add nsw i32 %gp1, -2
  %cmp9 = icmp sgt i32 %conv3, %sub8
  %or.cond = or i1 %cmp, %cmp9
  %sub12 = add nsw i32 %gp0, -2
  %cmp13 = icmp sgt i32 %conv6, %sub12
  %or.cond63 = or i1 %or.cond, %cmp13
  br i1 %or.cond63, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast double* %g_u to [163 x [163 x [5 x double]]]*
  %4 = bitcast double* %g_rhs to [163 x [163 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom17 = sext i32 %conv3 to i64
  %idxprom19 = sext i32 %conv6 to i64
  %arrayidx22 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 0
  %5 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx30 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 0
  %6 = load double, double* %arrayidx30, align 8, !tbaa !7
  %add31 = fadd double %5, %6
  store double %add31, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx22.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 1
  %7 = load double, double* %arrayidx22.1, align 8, !tbaa !7
  %arrayidx30.1 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 1
  %8 = load double, double* %arrayidx30.1, align 8, !tbaa !7
  %add31.1 = fadd double %7, %8
  store double %add31.1, double* %arrayidx22.1, align 8, !tbaa !7
  %arrayidx22.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 2
  %9 = load double, double* %arrayidx22.2, align 8, !tbaa !7
  %arrayidx30.2 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 2
  %10 = load double, double* %arrayidx30.2, align 8, !tbaa !7
  %add31.2 = fadd double %9, %10
  store double %add31.2, double* %arrayidx22.2, align 8, !tbaa !7
  %arrayidx22.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 3
  %11 = load double, double* %arrayidx22.3, align 8, !tbaa !7
  %arrayidx30.3 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 3
  %12 = load double, double* %arrayidx30.3, align 8, !tbaa !7
  %add31.3 = fadd double %11, %12
  store double %add31.3, double* %arrayidx22.3, align 8, !tbaa !7
  %arrayidx22.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 4
  %13 = load double, double* %arrayidx22.4, align 8, !tbaa !7
  %arrayidx30.4 = getelementptr inbounds [163 x [163 x [5 x double]]], [163 x [163 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 4
  %14 = load double, double* %arrayidx30.4, align 8, !tbaa !7
  %add31.4 = fadd double %13, %14
  store double %add31.4, double* %arrayidx22.4, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret void
}

attributes #0 = { convergent nofree norecurse nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { convergent nounwind readnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent nofree norecurse nounwind uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { convergent nounwind readnone }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 12.0.0 (git@github.com:ppetoumenos/llvm-project.git 5ca421c348215e182d0eda83a1273b47e25bb89e)"}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"const", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!12 = !{!"none", !"none", !"none", !"none", !"none"}
!13 = !{!"double*", !"double*", !"int", !"int", !"int"}
!14 = !{!"const", !"", !"", !"", !""}
!15 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!16 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!17 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!18 = !{!"const", !"const", !"const", !"const", !"const", !"const", !"const", !"", !"", !"", !""}
!19 = !{i32 1, i32 0, i32 0, i32 0}
!20 = !{!"none", !"none", !"none", !"none"}
!21 = !{!"double*", !"int", !"int", !"int"}
!22 = !{!"", !"", !"", !""}
!23 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!24 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!25 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!26 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!27 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!28 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!29 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int"}
!30 = !{!"", !"", !"", !"", !"", !""}
!31 = !{!"", !"", !"", !"", !""}
!32 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!33 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!34 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!35 = !{!"", !"", !"", !"", !"", !"", !"", !""}
