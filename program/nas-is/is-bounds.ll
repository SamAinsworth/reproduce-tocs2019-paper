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
  %3 = phi i64 [ 0, %0 ], [ %23, %2 ]
  %4 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %3
  %5 = add i64 %3, 64
  %6 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %5
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* %4, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %1, i64 %9
  %11 = add i64 %3, 32
  %12 = icmp sgt i64 %11, 33554431
  %13 = select i1 %12, i64 33554431, i64 %11
  %14 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %1, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* %10, align 4, !tbaa !5
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %10, align 4, !tbaa !5
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %21
  store i32 %8, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %3, 1
  %24 = icmp eq i64 %23, 33554432
  call void @llvm.prefetch(i8* %7, i32 0, i32 3, i32 1)
  call void @llvm.prefetch(i8* %18, i32 0, i32 3, i32 1)
  br i1 %24, label %25, label %2

; <label>:25:                                     ; preds = %2
  %26 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !5
  %27 = insertelement <4 x i32> undef, i32 %26, i32 3
  br label %28

; <label>:28:                                     ; preds = %94, %25
  %29 = phi i64 [ 0, %25 ], [ %110, %94 ]
  %30 = phi <4 x i32> [ %27, %25 ], [ %101, %94 ]
  %31 = phi <4 x i32> [ zeroinitializer, %25 ], [ %108, %94 ]
  %32 = phi <4 x i32> [ zeroinitializer, %25 ], [ %109, %94 ]
  %33 = or i64 %29, 1
  %34 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %33
  %35 = bitcast i32* %34 to <4 x i32>*
  %36 = load <4 x i32>, <4 x i32>* %35, align 4, !tbaa !5
  %37 = getelementptr i32, i32* %34, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  %39 = load <4 x i32>, <4 x i32>* %38, align 4, !tbaa !5
  %40 = shufflevector <4 x i32> %30, <4 x i32> %36, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %41 = shufflevector <4 x i32> %36, <4 x i32> %39, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %42 = icmp sgt <4 x i32> %40, %36
  %43 = icmp sgt <4 x i32> %41, %39
  %44 = zext <4 x i1> %42 to <4 x i32>
  %45 = zext <4 x i1> %43 to <4 x i32>
  %46 = add nsw <4 x i32> %44, %31
  %47 = add nsw <4 x i32> %45, %32
  %48 = or i64 %29, 8
  %49 = icmp eq i64 %48, 33554424
  br i1 %49, label %50, label %94, !llvm.loop !9

; <label>:50:                                     ; preds = %28
  %51 = add <4 x i32> %47, %46
  %52 = shufflevector <4 x i32> %51, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %53 = add <4 x i32> %51, %52
  br label %54

; <label>:54:                                     ; preds = %50
  %55 = extractelement <4 x i32> %39, i32 3
  %56 = shufflevector <4 x i32> %53, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %57 = add <4 x i32> %53, %56
  %58 = extractelement <4 x i32> %57, i32 0
  %59 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554425), align 4, !tbaa !5
  %60 = icmp sgt i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = add nsw i32 %61, %58
  %63 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554426), align 8, !tbaa !5
  %64 = icmp sgt i32 %59, %63
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %65, %62
  %67 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554427), align 4, !tbaa !5
  %68 = icmp sgt i32 %63, %67
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %69, %66
  %71 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554428), align 16, !tbaa !5
  %72 = icmp sgt i32 %67, %71
  %73 = zext i1 %72 to i32
  %74 = add nsw i32 %73, %70
  %75 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554429), align 4, !tbaa !5
  %76 = icmp sgt i32 %71, %75
  %77 = zext i1 %76 to i32
  %78 = add nsw i32 %77, %74
  %79 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554430), align 8, !tbaa !5
  %80 = icmp sgt i32 %75, %79
  %81 = zext i1 %80 to i32
  %82 = add nsw i32 %81, %78
  %83 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554431), align 4, !tbaa !5
  %84 = icmp sgt i32 %79, %83
  %85 = zext i1 %84 to i32
  %86 = add nsw i32 %85, %82
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

; <label>:88:                                     ; preds = %54
  %89 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %93

; <label>:90:                                     ; preds = %54
  %91 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @passed_verification, align 4, !tbaa !5
  br label %93

; <label>:93:                                     ; preds = %90, %88
  ret void

; <label>:94:                                     ; preds = %28
  %95 = or i64 %29, 9
  %96 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %95
  %97 = bitcast i32* %96 to <4 x i32>*
  %98 = load <4 x i32>, <4 x i32>* %97, align 4, !tbaa !5
  %99 = getelementptr i32, i32* %96, i64 4
  %100 = bitcast i32* %99 to <4 x i32>*
  %101 = load <4 x i32>, <4 x i32>* %100, align 4, !tbaa !5
  %102 = shufflevector <4 x i32> %39, <4 x i32> %98, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %103 = shufflevector <4 x i32> %98, <4 x i32> %101, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %104 = icmp sgt <4 x i32> %102, %98
  %105 = icmp sgt <4 x i32> %103, %101
  %106 = zext <4 x i1> %104 to <4 x i32>
  %107 = zext <4 x i1> %105 to <4 x i32>
  %108 = add nsw <4 x i32> %106, %46
  %109 = add nsw <4 x i32> %107, %47
  %110 = add nsw i64 %29, 16
  br label %28
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
  %29 = phi i64 [ 0, %1 ], [ %47, %28 ]
  %30 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %29
  %31 = add i64 %29, 64
  %32 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %30, align 4, !tbaa !5
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %35
  %37 = add i64 %29, 32
  %38 = icmp sgt i64 %37, 33554431
  %39 = select i1 %38, i64 33554431, i64 %37
  %40 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %42
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %36, align 4, !tbaa !5
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %36, align 4, !tbaa !5
  %47 = add nuw nsw i64 %29, 1
  %48 = icmp eq i64 %47, 33554432
  call void @llvm.prefetch(i8* %33, i32 0, i32 3, i32 1)
  call void @llvm.prefetch(i8* %44, i32 0, i32 3, i32 1)
  br i1 %48, label %49, label %28

; <label>:49:                                     ; preds = %28
  %50 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 0), align 16, !tbaa !5
  br label %51

; <label>:51:                                     ; preds = %106, %49
  %52 = phi i32 [ %50, %49 ], [ %110, %106 ]
  %53 = phi i64 [ 0, %49 ], [ %107, %106 ]
  %54 = or i64 %53, 1
  %55 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = add nsw i32 %56, %52
  store i32 %57, i32* %55, align 4, !tbaa !5
  %58 = or i64 %53, 2
  %59 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %58
  %60 = load i32, i32* %59, align 8, !tbaa !5
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8, !tbaa !5
  %62 = or i64 %53, 3
  %63 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4, !tbaa !5
  %66 = icmp eq i64 %62, 2097151
  br i1 %66, label %67, label %106

; <label>:67:                                     ; preds = %51
  br label %68

; <label>:68:                                     ; preds = %67, %99
  %69 = phi i32 [ %101, %99 ], [ %11, %67 ]
  %70 = phi i64 [ %97, %99 ], [ 0, %67 ]
  %71 = icmp ult i32 %69, 33554432
  br i1 %71, label %72, label %96

; <label>:72:                                     ; preds = %68
  %73 = add nsw i32 %69, -1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %70
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = trunc i64 %70 to i32
  switch i32 %79, label %88 [
    i32 4, label %80
    i32 2, label %80
    i32 1, label %80
  ]

; <label>:80:                                     ; preds = %72, %72, %72
  %81 = add nsw i32 %78, %0
  %82 = icmp eq i32 %76, %81
  br i1 %82, label %85, label %83

; <label>:83:                                     ; preds = %80
  %84 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %0, i32 %79)
  br label %96

; <label>:85:                                     ; preds = %80
  %86 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @passed_verification, align 4, !tbaa !5
  br label %96

; <label>:88:                                     ; preds = %72
  %89 = sub nsw i32 %78, %0
  %90 = icmp eq i32 %76, %89
  br i1 %90, label %93, label %91

; <label>:91:                                     ; preds = %88
  %92 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %0, i32 %79)
  br label %96

; <label>:93:                                     ; preds = %88
  %94 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @passed_verification, align 4, !tbaa !5
  br label %96

; <label>:96:                                     ; preds = %68, %91, %93, %83, %85
  %97 = add nuw nsw i64 %70, 1
  %98 = icmp eq i64 %97, 5
  br i1 %98, label %102, label %99

; <label>:99:                                     ; preds = %96
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %97
  %101 = load i32, i32* %100, align 4, !tbaa !5
  br label %68

; <label>:102:                                    ; preds = %96
  %103 = icmp eq i32 %0, 10
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %102
  store i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 0), i32** @key_buff_ptr_global, align 8, !tbaa !7
  br label %105

; <label>:105:                                    ; preds = %104, %102
  ret void

; <label>:106:                                    ; preds = %51
  %107 = add nsw i64 %53, 4
  %108 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff1, i64 0, i64 %107
  %109 = load i32, i32* %108, align 16, !tbaa !5
  %110 = add nsw i32 %109, %65
  store i32 %110, i32* %108, align 16, !tbaa !5
  br label %51
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
  %29 = phi i64 [ 0, %2 ], [ %49, %28 ]
  %30 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %29
  %31 = add i64 %29, 64
  %32 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %30, align 4, !tbaa !5
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  %37 = add i64 %29, 32
  %38 = icmp sgt i64 %37, 33554431
  %39 = select i1 %38, i64 33554431, i64 %37
  %40 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %27, i64 %42
  %44 = bitcast i32* %43 to i8*
  %45 = load i32, i32* %36, align 4, !tbaa !5
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %36, align 4, !tbaa !5
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %47
  store i32 %34, i32* %48, align 4, !tbaa !5
  %49 = add nuw nsw i64 %29, 1
  %50 = icmp eq i64 %49, 33554432
  call void @llvm.prefetch(i8* %33, i32 0, i32 3, i32 1)
  call void @llvm.prefetch(i8* %44, i32 0, i32 3, i32 1)
  br i1 %50, label %51, label %28

; <label>:51:                                     ; preds = %28
  %52 = load i64, i64* bitcast ([33554432 x i32]* @key_array to i64*), align 16
  %53 = trunc i64 %52 to i32
  %54 = lshr i64 %52, 32
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %53, %55
  %57 = zext i1 %56 to i32
  %58 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %57, i32 0
  %59 = insertelement <4 x i32> undef, i32 %55, i32 3
  br label %60

; <label>:60:                                     ; preds = %132, %51
  %61 = phi i64 [ 0, %51 ], [ %148, %132 ]
  %62 = phi <4 x i32> [ %58, %51 ], [ %146, %132 ]
  %63 = phi <4 x i32> [ zeroinitializer, %51 ], [ %147, %132 ]
  %64 = phi <4 x i32> [ %59, %51 ], [ %139, %132 ]
  %65 = or i64 %61, 2
  %66 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %65
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 8, !tbaa !5
  %69 = getelementptr i32, i32* %66, i64 4
  %70 = bitcast i32* %69 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 8, !tbaa !5
  %72 = shufflevector <4 x i32> %64, <4 x i32> %68, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %73 = shufflevector <4 x i32> %68, <4 x i32> %71, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %74 = icmp sgt <4 x i32> %72, %68
  %75 = icmp sgt <4 x i32> %73, %71
  %76 = zext <4 x i1> %74 to <4 x i32>
  %77 = zext <4 x i1> %75 to <4 x i32>
  %78 = add nsw <4 x i32> %76, %62
  %79 = add nsw <4 x i32> %77, %63
  %80 = or i64 %61, 8
  %81 = icmp eq i64 %80, 33554424
  br i1 %81, label %82, label %132, !llvm.loop !14

; <label>:82:                                     ; preds = %60
  %83 = add <4 x i32> %79, %78
  %84 = shufflevector <4 x i32> %83, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %85 = add <4 x i32> %83, %84
  br label %86

; <label>:86:                                     ; preds = %82
  %87 = extractelement <4 x i32> %71, i32 3
  %88 = shufflevector <4 x i32> %85, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %89 = add <4 x i32> %85, %88
  %90 = extractelement <4 x i32> %89, i32 0
  %91 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554426), align 8, !tbaa !5
  %92 = icmp sgt i32 %87, %91
  %93 = zext i1 %92 to i32
  %94 = add nsw i32 %93, %90
  %95 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554427), align 4, !tbaa !5
  %96 = icmp sgt i32 %91, %95
  %97 = zext i1 %96 to i32
  %98 = add nsw i32 %97, %94
  %99 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554428), align 16, !tbaa !5
  %100 = icmp sgt i32 %95, %99
  %101 = zext i1 %100 to i32
  %102 = add nsw i32 %101, %98
  %103 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554429), align 4, !tbaa !5
  %104 = icmp sgt i32 %99, %103
  %105 = zext i1 %104 to i32
  %106 = add nsw i32 %105, %102
  %107 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554430), align 8, !tbaa !5
  %108 = icmp sgt i32 %103, %107
  %109 = zext i1 %108 to i32
  %110 = add nsw i32 %109, %106
  %111 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554431), align 4, !tbaa !5
  %112 = icmp sgt i32 %107, %111
  %113 = zext i1 %112 to i32
  %114 = add nsw i32 %113, %110
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

; <label>:116:                                    ; preds = %86
  %117 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %114) #4
  %118 = load i32, i32* @passed_verification, align 4, !tbaa !5
  br label %122

; <label>:119:                                    ; preds = %86
  %120 = load i32, i32* @passed_verification, align 4, !tbaa !5
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @passed_verification, align 4, !tbaa !5
  br label %122

; <label>:122:                                    ; preds = %116, %119
  %123 = phi i32 [ %118, %116 ], [ %121, %119 ]
  %124 = icmp eq i32 %123, 51
  br i1 %124, label %126, label %125

; <label>:125:                                    ; preds = %122
  store i32 0, i32* @passed_verification, align 4, !tbaa !5
  br label %126

; <label>:126:                                    ; preds = %122, %125
  %127 = phi i32 [ 51, %122 ], [ 0, %125 ]
  %128 = load double, double* @cpu_time_used, align 8, !tbaa !1
  %129 = fdiv double 0x41B4000000000000, %128
  %130 = fdiv double %129, 1.000000e+06
  %131 = tail call i32 (i8*, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) bitcast (i32 (...)* @c_print_results to i32 (i8*, i32, i32, i32, i32, i32, double, double, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 66, i32 33554432, i32 0, i32 0, i32 10, double %128, double %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #4
  ret i32 0

; <label>:132:                                    ; preds = %60
  %133 = or i64 %61, 10
  %134 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %133
  %135 = bitcast i32* %134 to <4 x i32>*
  %136 = load <4 x i32>, <4 x i32>* %135, align 8, !tbaa !5
  %137 = getelementptr i32, i32* %134, i64 4
  %138 = bitcast i32* %137 to <4 x i32>*
  %139 = load <4 x i32>, <4 x i32>* %138, align 8, !tbaa !5
  %140 = shufflevector <4 x i32> %71, <4 x i32> %136, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %141 = shufflevector <4 x i32> %136, <4 x i32> %139, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %142 = icmp sgt <4 x i32> %140, %136
  %143 = icmp sgt <4 x i32> %141, %139
  %144 = zext <4 x i1> %142 to <4 x i32>
  %145 = zext <4 x i1> %143 to <4 x i32>
  %146 = add nsw <4 x i32> %144, %78
  %147 = add nsw <4 x i32> %145, %79
  %148 = add nsw i64 %61, 16
  br label %60
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
