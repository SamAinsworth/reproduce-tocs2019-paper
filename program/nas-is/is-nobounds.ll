; ModuleID = 'is.c'
source_filename = "is.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_test_index_array = local_unnamed_addr global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = local_unnamed_addr global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = local_unnamed_addr global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = local_unnamed_addr global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = local_unnamed_addr global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = local_unnamed_addr global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = local_unnamed_addr global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = local_unnamed_addr global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = local_unnamed_addr global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = local_unnamed_addr global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@randlc.KS = internal unnamed_addr global i1 false, align 4
@randlc.R23 = internal unnamed_addr global double 0.000000e+00, align 8
@randlc.R46 = internal unnamed_addr global double 0.000000e+00, align 8
@randlc.T23 = internal unnamed_addr global double 0.000000e+00, align 8
@randlc.T46 = internal unnamed_addr global double 0.000000e+00, align 8
@key_array = common local_unnamed_addr global [33554432 x i32] zeroinitializer, align 16
@key_buff2 = common local_unnamed_addr global [33554432 x i32] zeroinitializer, align 16
@key_buff_ptr_global = common local_unnamed_addr global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Full_verify: number of keys out of sort: %d\0A\00", align 1
@passed_verification = common local_unnamed_addr global i32 0, align 4
@test_index_array = common local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@partial_verify_vals = common local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@key_buff1 = common global [33554432 x i32] zeroinitializer, align 16
@test_rank_array = common local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" Size:  %d  (class %c)\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" Iterations:   %d\0A\00", align 1
@start = common local_unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@end = common local_unnamed_addr global i64 0, align 8
@cpu_time_used = common local_unnamed_addr global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"time : %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"15 Aug 2016\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"gcc\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"-O3  -static -g -std=c99 #-mmic\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"-static -openmp #-mmic \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"randlc\00", align 1
@str = private unnamed_addr constant [65 x i8] c"\0A\0A NAS Parallel Benchmarks 2.3 OpenACC C version - IS Benchmark\0A\00"
@str.18 = private unnamed_addr constant [14 x i8] c"\0A   iteration\00"

; Function Attrs: norecurse nounwind uwtable
define double @randlc(double* nocapture, double* nocapture readonly) local_unnamed_addr #0 {
  %3 = load i1, i1* @randlc.KS, align 4
  br i1 %3, label %4, label %9

; <label>:4:                                      ; preds = %2
  %5 = load double, double* @randlc.R23, align 8, !tbaa !1
  %6 = load double, double* @randlc.T23, align 8, !tbaa !1
  %7 = load double, double* @randlc.R46, align 8, !tbaa !1
  %8 = load double, double* @randlc.T46, align 8, !tbaa !1
  br label %10

; <label>:9:                                      ; preds = %2
  store double 0x3E80000000000000, double* @randlc.R23, align 8, !tbaa !1
  store double 8.388608e+06, double* @randlc.T23, align 8, !tbaa !1
  store double 0x3D10000000000000, double* @randlc.R46, align 8, !tbaa !1
  store double 0x42D0000000000000, double* @randlc.T46, align 8, !tbaa !1
  store i1 true, i1* @randlc.KS, align 4
  br label %10

; <label>:10:                                     ; preds = %4, %9
  %11 = phi double [ %8, %4 ], [ 0x42D0000000000000, %9 ]
  %12 = phi double [ %7, %4 ], [ 0x3D10000000000000, %9 ]
  %13 = phi double [ %6, %4 ], [ 8.388608e+06, %9 ]
  %14 = phi double [ %5, %4 ], [ 0x3E80000000000000, %9 ]
  %15 = load double, double* %1, align 8, !tbaa !1
  %16 = fmul double %14, %15
  %17 = fptosi double %16 to i32
  %18 = sitofp i32 %17 to double
  %19 = fmul double %13, %18
  %20 = fsub double %15, %19
  %21 = load double, double* %0, align 8, !tbaa !1
  %22 = fmul double %14, %21
  %23 = fptosi double %22 to i32
  %24 = sitofp i32 %23 to double
  %25 = fmul double %13, %24
  %26 = fsub double %21, %25
  %27 = fmul double %18, %26
  %28 = fmul double %20, %24
  %29 = fadd double %28, %27
  %30 = fmul double %14, %29
  %31 = fptosi double %30 to i32
  %32 = sitofp i32 %31 to double
  %33 = fmul double %13, %32
  %34 = fsub double %29, %33
  %35 = fmul double %13, %34
  %36 = fmul double %20, %26
  %37 = fadd double %36, %35
  %38 = fmul double %12, %37
  %39 = fptosi double %38 to i32
  %40 = sitofp i32 %39 to double
  %41 = fmul double %11, %40
  %42 = fsub double %37, %41
  store double %42, double* %0, align 8, !tbaa !1
  %43 = fmul double %12, %42
  ret double %43
}

; Function Attrs: norecurse nounwind uwtable
define void @create_seq(double, double) local_unnamed_addr #0 {
  %3 = load i1, i1* @randlc.KS, align 4
  br label %4

; <label>:4:                                      ; preds = %14, %2
  %5 = phi i1 [ %3, %2 ], [ true, %14 ]
  %6 = phi i64 [ 0, %2 ], [ %118, %14 ]
  %7 = phi double [ %0, %2 ], [ %112, %14 ]
  br i1 %5, label %8, label %13

; <label>:8:                                      ; preds = %4
  %9 = load double, double* @randlc.R23, align 8, !tbaa !1
  %10 = load double, double* @randlc.T23, align 8, !tbaa !1
  %11 = load double, double* @randlc.R46, align 8, !tbaa !1
  %12 = load double, double* @randlc.T46, align 8, !tbaa !1
  br label %14

; <label>:13:                                     ; preds = %4
  store double 0x3E80000000000000, double* @randlc.R23, align 8, !tbaa !1
  store double 8.388608e+06, double* @randlc.T23, align 8, !tbaa !1
  store double 0x3D10000000000000, double* @randlc.R46, align 8, !tbaa !1
  store double 0x42D0000000000000, double* @randlc.T46, align 8, !tbaa !1
  store i1 true, i1* @randlc.KS, align 4
  br label %14

; <label>:14:                                     ; preds = %8, %13
  %15 = phi double [ %12, %8 ], [ 0x42D0000000000000, %13 ]
  %16 = phi double [ %11, %8 ], [ 0x3D10000000000000, %13 ]
  %17 = phi double [ %10, %8 ], [ 8.388608e+06, %13 ]
  %18 = phi double [ %9, %8 ], [ 0x3E80000000000000, %13 ]
  %19 = fmul double %18, %1
  %20 = fptosi double %19 to i32
  %21 = sitofp i32 %20 to double
  %22 = fmul double %17, %21
  %23 = fsub double %1, %22
  %24 = fmul double %7, %18
  %25 = fptosi double %24 to i32
  %26 = sitofp i32 %25 to double
  %27 = fmul double %17, %26
  %28 = fsub double %7, %27
  %29 = fmul double %21, %28
  %30 = fmul double %26, %23
  %31 = fadd double %30, %29
  %32 = fmul double %18, %31
  %33 = fptosi double %32 to i32
  %34 = sitofp i32 %33 to double
  %35 = fmul double %17, %34
  %36 = fsub double %31, %35
  %37 = fmul double %17, %36
  %38 = fmul double %23, %28
  %39 = fadd double %38, %37
  %40 = fmul double %16, %39
  %41 = fptosi double %40 to i32
  %42 = sitofp i32 %41 to double
  %43 = fmul double %15, %42
  %44 = fsub double %39, %43
  %45 = fmul double %16, %44
  %46 = fmul double %44, %18
  %47 = fptosi double %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = fmul double %17, %48
  %50 = fsub double %44, %49
  %51 = fmul double %21, %50
  %52 = fmul double %48, %23
  %53 = fadd double %52, %51
  %54 = fmul double %18, %53
  %55 = fptosi double %54 to i32
  %56 = sitofp i32 %55 to double
  %57 = fmul double %17, %56
  %58 = fsub double %53, %57
  %59 = fmul double %17, %58
  %60 = fmul double %23, %50
  %61 = fadd double %60, %59
  %62 = fmul double %16, %61
  %63 = fptosi double %62 to i32
  %64 = sitofp i32 %63 to double
  %65 = fmul double %15, %64
  %66 = fsub double %61, %65
  %67 = fmul double %16, %66
  %68 = fadd double %45, %67
  %69 = fmul double %66, %18
  %70 = fptosi double %69 to i32
  %71 = sitofp i32 %70 to double
  %72 = fmul double %17, %71
  %73 = fsub double %66, %72
  %74 = fmul double %21, %73
  %75 = fmul double %71, %23
  %76 = fadd double %75, %74
  %77 = fmul double %18, %76
  %78 = fptosi double %77 to i32
  %79 = sitofp i32 %78 to double
  %80 = fmul double %17, %79
  %81 = fsub double %76, %80
  %82 = fmul double %17, %81
  %83 = fmul double %23, %73
  %84 = fadd double %83, %82
  %85 = fmul double %16, %84
  %86 = fptosi double %85 to i32
  %87 = sitofp i32 %86 to double
  %88 = fmul double %15, %87
  %89 = fsub double %84, %88
  %90 = fmul double %16, %89
  %91 = fadd double %68, %90
  %92 = fmul double %89, %18
  %93 = fptosi double %92 to i32
  %94 = sitofp i32 %93 to double
  %95 = fmul double %17, %94
  %96 = fsub double %89, %95
  %97 = fmul double %21, %96
  %98 = fmul double %94, %23
  %99 = fadd double %98, %97
  %100 = fmul double %18, %99
  %101 = fptosi double %100 to i32
  %102 = sitofp i32 %101 to double
  %103 = fmul double %17, %102
  %104 = fsub double %99, %103
  %105 = fmul double %17, %104
  %106 = fmul double %23, %96
  %107 = fadd double %106, %105
  %108 = fmul double %16, %107
  %109 = fptosi double %108 to i32
  %110 = sitofp i32 %109 to double
  %111 = fmul double %15, %110
  %112 = fsub double %107, %111
  %113 = fmul double %16, %112
  %114 = fadd double %91, %113
  %115 = fmul double %114, 5.242880e+05
  %116 = fptosi double %115 to i32
  %117 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %6
  store i32 %116, i32* %117, align 4, !tbaa !5
  %118 = add nuw nsw i64 %6, 1
  %119 = icmp eq i64 %118, 33554432
  br i1 %119, label %120, label %4

; <label>:120:                                    ; preds = %14
  ret void
}

; Function Attrs: nounwind uwtable
define void @full_verify() local_unnamed_addr #1 {
  %1 = load i32*, i32** @key_buff_ptr_global, align 8, !tbaa !7
  br label %2

; <label>:2:                                      ; preds = %2, %0
  %3 = phi i64 [ 0, %0 ], [ %21, %2 ]
  %4 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %3
  %5 = add i64 %3, 64
  %6 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %5
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* %4, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %1, i64 %9
  %11 = add i64 %3, 32
  %12 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %1, i64 %14
  %16 = bitcast i32* %15 to i8*
  %17 = load i32, i32* %10, align 4, !tbaa !5
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %10, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %19
  store i32 %8, i32* %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %3, 1
  %22 = icmp eq i64 %21, 33554432
  call void @llvm.prefetch(i8* %7, i32 0, i32 3, i32 1)
  call void @llvm.prefetch(i8* %16, i32 0, i32 3, i32 1)
  br i1 %22, label %23, label %2

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !5
  %25 = insertelement <4 x i32> undef, i32 %24, i32 3
  br label %26

; <label>:26:                                     ; preds = %92, %23
  %27 = phi i64 [ 0, %23 ], [ %108, %92 ]
  %28 = phi <4 x i32> [ %25, %23 ], [ %99, %92 ]
  %29 = phi <4 x i32> [ zeroinitializer, %23 ], [ %106, %92 ]
  %30 = phi <4 x i32> [ zeroinitializer, %23 ], [ %107, %92 ]
  %31 = or i64 %27, 1
  %32 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %31
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !5
  %35 = getelementptr i32, i32* %32, i64 4
  %36 = bitcast i32* %35 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 4, !tbaa !5
  %38 = shufflevector <4 x i32> %28, <4 x i32> %34, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %39 = shufflevector <4 x i32> %34, <4 x i32> %37, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %40 = icmp sgt <4 x i32> %38, %34
  %41 = icmp sgt <4 x i32> %39, %37
  %42 = zext <4 x i1> %40 to <4 x i32>
  %43 = zext <4 x i1> %41 to <4 x i32>
  %44 = add nsw <4 x i32> %42, %29
  %45 = add nsw <4 x i32> %43, %30
  %46 = or i64 %27, 8
  %47 = icmp eq i64 %46, 33554424
  br i1 %47, label %48, label %92, !llvm.loop !9

; <label>:48:                                     ; preds = %26
  %49 = add <4 x i32> %45, %44
  %50 = shufflevector <4 x i32> %49, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %51 = add <4 x i32> %49, %50
  br label %52

; <label>:52:                                     ; preds = %48
  %53 = extractelement <4 x i32> %37, i32 3
  %54 = shufflevector <4 x i32> %51, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %55 = add <4 x i32> %51, %54
  %56 = extractelement <4 x i32> %55, i32 0
  %57 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554425), align 4, !tbaa !5
  %58 = icmp sgt i32 %53, %57
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 %59, %56
  %61 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554426), align 8, !tbaa !5
  %62 = icmp sgt i32 %57, %61
  %63 = zext i1 %62 to i32
  %64 = add nsw i32 %63, %60
  %65 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554427), align 4, !tbaa !5
  %66 = icmp sgt i32 %61, %65
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %67, %64
  %69 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554428), align 16, !tbaa !5
  %70 = icmp sgt i32 %65, %69
  %71 = zext i1 %70 to i32
  %72 = add nsw i32 %71, %68
  %73 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554429), align 4, !tbaa !5
  %74 = icmp sgt i32 %69, %73
  %75 = zext i1 %74 to i32
  %76 = add nsw i32 %75, %72
  %77 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554430), align 8, !tbaa !5
  %78 = icmp sgt i32 %73, %77
  %79 = zext i1 %78 to i32
  %80 = add nsw i32 %79, %76
  %81 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554431), align 4, !tbaa !5
  %82 = icmp sgt i32 %77, %81
  %83 = zext i1 %82 to i32
  %84 = add nsw i32 %83, %80
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

; <label>:86:                                     ; preds = %52
  %87 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %91

; <label>:88:                                     ; preds = %52
  %89 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @passed_verification, align 4, !tbaa !5
  br label %91

; <label>:91:                                     ; preds = %88, %86
  ret void

; <label>:92:                                     ; preds = %26
  %93 = or i64 %27, 9
  %94 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %93
  %95 = bitcast i32* %94 to <4 x i32>*
  %96 = load <4 x i32>, <4 x i32>* %95, align 4, !tbaa !5
  %97 = getelementptr i32, i32* %94, i64 4
  %98 = bitcast i32* %97 to <4 x i32>*
  %99 = load <4 x i32>, <4 x i32>* %98, align 4, !tbaa !5
  %100 = shufflevector <4 x i32> %37, <4 x i32> %96, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %101 = shufflevector <4 x i32> %96, <4 x i32> %99, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %102 = icmp sgt <4 x i32> %100, %96
  %103 = icmp sgt <4 x i32> %101, %99
  %104 = zext <4 x i1> %102 to <4 x i32>
  %105 = zext <4 x i1> %103 to <4 x i32>
  %106 = add nsw <4 x i32> %104, %44
  %107 = add nsw <4 x i32> %105, %45
  %108 = add nsw i64 %27, 16
  br label %26
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @rank(i32) local_unnamed_addr #1 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %2
  store i32 %0, i32* %3, align 4, !tbaa !5
  %4 = sub nsw i32 2097152, %0
  %5 = add nsw i32 %0, 10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %6
  store i32 %4, i32* %7, align 4, !tbaa !5
  %8 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 0), align 16, !tbaa !5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  store i32 %11, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 0), align 16, !tbaa !5
  %12 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 1), align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  store i32 %15, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !5
  %16 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 2), align 8, !tbaa !5
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  store i32 %19, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !5
  %20 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 3), align 4, !tbaa !5
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  store i32 %23, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !5
  %24 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 4), align 16, !tbaa !5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  store i32 %27, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([33554432 x i32]* @key_buff2 to i8*), i8* bitcast ([33554432 x i32]* @key_array to i8*), i64 134217728, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([33554432 x i32]* @key_buff1 to i8*), i8 0, i64 8388608, i32 16, i1 false)
  br label %28

; <label>:28:                                     ; preds = %28, %1
  %29 = phi i64 [ 0, %1 ], [ %61, %28 ]
  %30 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %29
  %31 = add nuw nsw i64 %29, 64
  %32 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %30, align 8, !tbaa !5
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %35
  %37 = add nuw nsw i64 %29, 32
  %38 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %37
  %39 = load i32, i32* %38, align 8, !tbaa !5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %40
  %42 = bitcast i32* %41 to i8*
  %43 = load i32, i32* %36, align 4, !tbaa !5
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %36, align 4, !tbaa !5
  %45 = or i64 %29, 1
  call void @llvm.prefetch(i8* %33, i32 0, i32 3, i32 1)
  call void @llvm.prefetch(i8* %42, i32 0, i32 3, i32 1)
  %46 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %45
  %47 = add nsw i64 %29, 65
  %48 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %47
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* %46, align 4, !tbaa !5
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %51
  %53 = add nsw i64 %29, 33
  %54 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %56
  %58 = bitcast i32* %57 to i8*
  %59 = load i32, i32* %52, align 4, !tbaa !5
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %52, align 4, !tbaa !5
  %61 = add nsw i64 %29, 2
  %62 = icmp eq i64 %61, 33554432
  call void @llvm.prefetch(i8* %49, i32 0, i32 3, i32 1)
  call void @llvm.prefetch(i8* %58, i32 0, i32 3, i32 1)
  br i1 %62, label %63, label %28

; <label>:63:                                     ; preds = %28
  %64 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 0), align 16, !tbaa !5
  br label %65

; <label>:65:                                     ; preds = %120, %63
  %66 = phi i32 [ %64, %63 ], [ %124, %120 ]
  %67 = phi i64 [ 0, %63 ], [ %121, %120 ]
  %68 = or i64 %67, 1
  %69 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = add nsw i32 %70, %66
  store i32 %71, i32* %69, align 4, !tbaa !5
  %72 = or i64 %67, 2
  %73 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %72
  %74 = load i32, i32* %73, align 8, !tbaa !5
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8, !tbaa !5
  %76 = or i64 %67, 3
  %77 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4, !tbaa !5
  %80 = icmp eq i64 %76, 2097151
  br i1 %80, label %81, label %120

; <label>:81:                                     ; preds = %65
  br label %82

; <label>:82:                                     ; preds = %81, %113
  %83 = phi i32 [ %115, %113 ], [ %11, %81 ]
  %84 = phi i64 [ %111, %113 ], [ 0, %81 ]
  %85 = icmp ult i32 %83, 33554432
  br i1 %85, label %86, label %110

; <label>:86:                                     ; preds = %82
  %87 = add nsw i32 %83, -1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !5
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %84
  %92 = load i32, i32* %91, align 4, !tbaa !5
  %93 = trunc i64 %84 to i32
  switch i32 %93, label %102 [
    i32 4, label %94
    i32 2, label %94
    i32 1, label %94
  ]

; <label>:94:                                     ; preds = %86, %86, %86
  %95 = add nsw i32 %92, %0
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %99, label %97

; <label>:97:                                     ; preds = %94
  %98 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %0, i32 %93)
  br label %110

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @passed_verification, align 4, !tbaa !5
  br label %110

; <label>:102:                                    ; preds = %86
  %103 = sub nsw i32 %92, %0
  %104 = icmp eq i32 %90, %103
  br i1 %104, label %107, label %105

; <label>:105:                                    ; preds = %102
  %106 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %0, i32 %93)
  br label %110

; <label>:107:                                    ; preds = %102
  %108 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @passed_verification, align 4, !tbaa !5
  br label %110

; <label>:110:                                    ; preds = %82, %105, %107, %97, %99
  %111 = add nuw nsw i64 %84, 1
  %112 = icmp eq i64 %111, 5
  br i1 %112, label %116, label %113

; <label>:113:                                    ; preds = %110
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %111
  %115 = load i32, i32* %114, align 4, !tbaa !5
  br label %82

; <label>:116:                                    ; preds = %110
  %117 = icmp eq i32 %0, 10
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %116
  store i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 0), i32** @key_buff_ptr_global, align 8, !tbaa !7
  br label %119

; <label>:119:                                    ; preds = %118, %116
  ret void

; <label>:120:                                    ; preds = %65
  %121 = add nsw i64 %67, 4
  %122 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %121
  %123 = load i32, i32* %122, align 16, !tbaa !5
  %124 = add nsw i32 %123, %79
  store i32 %124, i32* %122, align 16, !tbaa !5
  br label %65
}

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x i32]* @test_index_array to i8*), i8* bitcast ([5 x i32]* @B_test_index_array to i8*), i64 20, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x i32]* @test_rank_array to i8*), i8* bitcast ([5 x i32]* @B_test_rank_array to i8*), i64 20, i32 16, i1 false)
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @str, i64 0, i64 0))
  %4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 33554432, i32 66)
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %6 = tail call i32 (i32, ...) bitcast (i32 (...)* @timer_clear to i32 (i32, ...)*)(i32 1) #4
  tail call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000)
  tail call void @rank(i32 1)
  store i32 0, i32* @passed_verification, align 4, !tbaa !5
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.18, i64 0, i64 0))
  %8 = tail call i64 @clock() #4
  store i64 %8, i64* @start, align 8, !tbaa !12
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 1)
  tail call void @rank(i32 1)
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 2)
  tail call void @rank(i32 2)
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 3)
  tail call void @rank(i32 3)
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 4)
  tail call void @rank(i32 4)
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 5)
  tail call void @rank(i32 5)
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 6)
  tail call void @rank(i32 6)
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 7)
  tail call void @rank(i32 7)
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 8)
  tail call void @rank(i32 8)
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 9)
  tail call void @rank(i32 9)
  %18 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 10)
  tail call void @rank(i32 10)
  %19 = tail call i32 (i32, ...) bitcast (i32 (...)* @timer_stop to i32 (i32, ...)*)(i32 1) #4
  %20 = tail call i32 (i32, ...) bitcast (i32 (...)* @timer_read to i32 (i32, ...)*)(i32 1) #4
  %21 = tail call i64 @clock() #4
  store i64 %21, i64* @end, align 8, !tbaa !12
  %22 = load i64, i64* @start, align 8, !tbaa !12
  %23 = sub nsw i64 %21, %22
  %24 = sitofp i64 %23 to double
  %25 = fdiv double %24, 1.000000e+06
  store double %25, double* @cpu_time_used, align 8, !tbaa !1
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), double %25)
  %27 = load i32*, i32** @key_buff_ptr_global, align 8, !tbaa !7
  br label %28

; <label>:28:                                     ; preds = %28, %2
  %29 = phi i64 [ 0, %2 ], [ %47, %28 ]
  %30 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %29
  %31 = add i64 %29, 64
  %32 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %30, align 4, !tbaa !5
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  %37 = add i64 %29, 32
  %38 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %27, i64 %40
  %42 = bitcast i32* %41 to i8*
  %43 = load i32, i32* %36, align 4, !tbaa !5
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %36, align 4, !tbaa !5
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %45
  store i32 %34, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %29, 1
  %48 = icmp eq i64 %47, 33554432
  call void @llvm.prefetch(i8* %33, i32 0, i32 3, i32 1)
  call void @llvm.prefetch(i8* %42, i32 0, i32 3, i32 1)
  br i1 %48, label %49, label %28

; <label>:49:                                     ; preds = %28
  %50 = load i64, i64* bitcast ([33554432 x i32]* @key_array to i64*), align 16
  %51 = trunc i64 %50 to i32
  %52 = lshr i64 %50, 32
  %53 = trunc i64 %52 to i32
  %54 = icmp sgt i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %55, i32 0
  %57 = insertelement <4 x i32> undef, i32 %53, i32 3
  br label %58

; <label>:58:                                     ; preds = %130, %49
  %59 = phi i64 [ 0, %49 ], [ %146, %130 ]
  %60 = phi <4 x i32> [ %56, %49 ], [ %144, %130 ]
  %61 = phi <4 x i32> [ zeroinitializer, %49 ], [ %145, %130 ]
  %62 = phi <4 x i32> [ %57, %49 ], [ %137, %130 ]
  %63 = or i64 %59, 2
  %64 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %63
  %65 = bitcast i32* %64 to <4 x i32>*
  %66 = load <4 x i32>, <4 x i32>* %65, align 8, !tbaa !5
  %67 = getelementptr i32, i32* %64, i64 4
  %68 = bitcast i32* %67 to <4 x i32>*
  %69 = load <4 x i32>, <4 x i32>* %68, align 8, !tbaa !5
  %70 = shufflevector <4 x i32> %62, <4 x i32> %66, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %71 = shufflevector <4 x i32> %66, <4 x i32> %69, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %72 = icmp sgt <4 x i32> %70, %66
  %73 = icmp sgt <4 x i32> %71, %69
  %74 = zext <4 x i1> %72 to <4 x i32>
  %75 = zext <4 x i1> %73 to <4 x i32>
  %76 = add nsw <4 x i32> %74, %60
  %77 = add nsw <4 x i32> %75, %61
  %78 = or i64 %59, 8
  %79 = icmp eq i64 %78, 33554424
  br i1 %79, label %80, label %130, !llvm.loop !14

; <label>:80:                                     ; preds = %58
  %81 = add <4 x i32> %77, %76
  %82 = shufflevector <4 x i32> %81, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %83 = add <4 x i32> %81, %82
  br label %84

; <label>:84:                                     ; preds = %80
  %85 = extractelement <4 x i32> %69, i32 3
  %86 = shufflevector <4 x i32> %83, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %87 = add <4 x i32> %83, %86
  %88 = extractelement <4 x i32> %87, i32 0
  %89 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554426), align 8, !tbaa !5
  %90 = icmp sgt i32 %85, %89
  %91 = zext i1 %90 to i32
  %92 = add nsw i32 %91, %88
  %93 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554427), align 4, !tbaa !5
  %94 = icmp sgt i32 %89, %93
  %95 = zext i1 %94 to i32
  %96 = add nsw i32 %95, %92
  %97 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554428), align 16, !tbaa !5
  %98 = icmp sgt i32 %93, %97
  %99 = zext i1 %98 to i32
  %100 = add nsw i32 %99, %96
  %101 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554429), align 4, !tbaa !5
  %102 = icmp sgt i32 %97, %101
  %103 = zext i1 %102 to i32
  %104 = add nsw i32 %103, %100
  %105 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554430), align 8, !tbaa !5
  %106 = icmp sgt i32 %101, %105
  %107 = zext i1 %106 to i32
  %108 = add nsw i32 %107, %104
  %109 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554431), align 4, !tbaa !5
  %110 = icmp sgt i32 %105, %109
  %111 = zext i1 %110 to i32
  %112 = add nsw i32 %111, %108
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

; <label>:114:                                    ; preds = %84
  %115 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %112) #4
  %116 = load i32, i32* @passed_verification, align 4, !tbaa !5
  br label %120

; <label>:117:                                    ; preds = %84
  %118 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @passed_verification, align 4, !tbaa !5
  br label %120

; <label>:120:                                    ; preds = %114, %117
  %121 = phi i32 [ %116, %114 ], [ %119, %117 ]
  %122 = icmp eq i32 %121, 51
  br i1 %122, label %124, label %123

; <label>:123:                                    ; preds = %120
  store i32 0, i32* @passed_verification, align 4, !tbaa !5
  br label %124

; <label>:124:                                    ; preds = %120, %123
  %125 = phi i32 [ 51, %120 ], [ 0, %123 ]
  %126 = load double, double* @cpu_time_used, align 8, !tbaa !1
  %127 = fdiv double 0x41B4000000000000, %126
  %128 = fdiv double %127, 1.000000e+06
  %129 = tail call i32 (i8*, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) bitcast (i32 (...)* @c_print_results to i32 (i8*, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 66, i32 33554432, i32 0, i32 0, i32 10, double %126, double %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #4
  ret i32 0

; <label>:130:                                    ; preds = %58
  %131 = or i64 %59, 10
  %132 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %131
  %133 = bitcast i32* %132 to <4 x i32>*
  %134 = load <4 x i32>, <4 x i32>* %133, align 8, !tbaa !5
  %135 = getelementptr i32, i32* %132, i64 4
  %136 = bitcast i32* %135 to <4 x i32>*
  %137 = load <4 x i32>, <4 x i32>* %136, align 8, !tbaa !5
  %138 = shufflevector <4 x i32> %69, <4 x i32> %134, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %139 = shufflevector <4 x i32> %134, <4 x i32> %137, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %140 = icmp sgt <4 x i32> %138, %134
  %141 = icmp sgt <4 x i32> %139, %137
  %142 = zext <4 x i1> %140 to <4 x i32>
  %143 = zext <4 x i1> %141 to <4 x i32>
  %144 = add nsw <4 x i32> %142, %76
  %145 = add nsw <4 x i32> %143, %77
  %146 = add nsw i64 %59, 16
  br label %58
}

declare i32 @timer_clear(...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

declare i32 @timer_stop(...) local_unnamed_addr #3

declare i32 @timer_read(...) local_unnamed_addr #3

declare i32 @c_print_results(...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.prefetch(i8* nocapture, i32, i32, i32) #5

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.vectorize.width", i32 1}
!11 = !{!"llvm.loop.interleave.count", i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = distinct !{!14, !10, !11}
