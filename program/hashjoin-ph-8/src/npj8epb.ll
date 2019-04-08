; ModuleID = 'npj8epb.c'
source_filename = "npj8epb.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bucket_buffer_t = type { %struct.bucket_buffer_t*, i32, [1024 x %struct.bucket_t] }
%struct.bucket_t = type { i8, i32, [2 x %struct.tuple_t], %struct.bucket_t* }
%struct.tuple_t = type { i32, i32 }
%struct.hashtable_t = type { %struct.bucket_t*, i32, i32, i32 }
%struct.relation_t = type { %struct.tuple_t*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%union.pthread_barrier_t = type { i64, [24 x i8] }
%struct.cpu_set_t = type { [16 x i64] }
%union.pthread_attr_t = type { i64, [56 x i8] }
%struct.arg_t = type { i32, %struct.hashtable_t*, %struct.relation_t, %struct.relation_t, %union.pthread_barrier_t*, i64, i64, i64, i64, %struct.timeval, %struct.timeval }
%union.pthread_barrierattr_t = type { i32, [4 x i8] }

@.str = private unnamed_addr constant [28 x i8] c"Aligned allocation failed!\0A\00", align 1
@numalocalize = external local_unnamed_addr global i32, align 4
@nthreads = external local_unnamed_addr global i32, align 4
@start = common local_unnamed_addr global i64 0, align 8
@end = common local_unnamed_addr global i64 0, align 8
@cpu_time_used = common local_unnamed_addr global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"time : %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"ERROR; return code from pthread_create() is %d\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"RUNTIME TOTAL, BUILD, PART (cycles): \0A\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"%llu \09 %llu \09 %llu \00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"TOTAL-TIME-USECS, TOTAL-TUPLES, CYCLES-PER-TUPLE: \0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%.4lf \09 %llu \09 \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%.4lf \00", align 1
@str.12 = private unnamed_addr constant [25 x i8] c"Couldn't wait on barrier\00"
@str.13 = private unnamed_addr constant [28 x i8] c"Couldn't create the barrier\00"

; Function Attrs: nounwind
define void @init_bucket_buffer(%struct.bucket_buffer_t** nocapture) local_unnamed_addr #0 {
  %2 = tail call noalias i8* @malloc(i64 32784) #5
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %4, align 8, !tbaa !1
  %5 = bitcast i8* %2 to %struct.bucket_buffer_t**
  store %struct.bucket_buffer_t* null, %struct.bucket_buffer_t** %5, align 8, !tbaa !7
  %6 = bitcast %struct.bucket_buffer_t** %0 to i8**
  store i8* %2, i8** %6, align 8, !tbaa !8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
define void @free_bucket_buffer(%struct.bucket_buffer_t* nocapture) local_unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi %struct.bucket_buffer_t* [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.bucket_buffer_t, %struct.bucket_buffer_t* %3, i64 0, i32 0
  %5 = load %struct.bucket_buffer_t*, %struct.bucket_buffer_t** %4, align 8, !tbaa !7
  %6 = bitcast %struct.bucket_buffer_t* %3 to i8*
  tail call void @free(i8* %6) #5
  %7 = icmp eq %struct.bucket_buffer_t* %5, null
  br i1 %7, label %8, label %2

; <label>:8:                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
define void @allocate_hashtable(%struct.hashtable_t** nocapture, i32) local_unnamed_addr #0 {
  %3 = tail call noalias i8* @malloc(i64 24) #5
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i32*
  %6 = add nsw i32 %1, -1
  %7 = ashr i32 %6, 1
  %8 = or i32 %7, %6
  %9 = ashr i32 %8, 2
  %10 = or i32 %9, %8
  %11 = ashr i32 %10, 4
  %12 = or i32 %11, %10
  %13 = ashr i32 %12, 8
  %14 = or i32 %13, %12
  %15 = ashr i32 %14, 16
  %16 = or i32 %15, %14
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 8, !tbaa !9
  %18 = bitcast i8* %3 to i8**
  %19 = sext i32 %17 to i64
  %20 = shl nsw i64 %19, 5
  %21 = tail call i32 @posix_memalign(i8** %18, i64 64, i64 %20) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %2
  tail call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #6
  tail call void @exit(i32 1) #7
  unreachable

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* @numalocalize, align 4, !tbaa !11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

; <label>:27:                                     ; preds = %24
  %28 = bitcast i8* %3 to %struct.tuple_t**
  %29 = load %struct.tuple_t*, %struct.tuple_t** %28, align 8, !tbaa !12
  %30 = load i32, i32* %5, align 8, !tbaa !9
  %31 = shl i32 %30, 2
  %32 = load i32, i32* @nthreads, align 4, !tbaa !11
  %33 = tail call i32 @numa_localize(%struct.tuple_t* %29, i32 %31, i32 %32) #5
  br label %34

; <label>:34:                                     ; preds = %24, %27
  %35 = load i8*, i8** %18, align 8, !tbaa !12
  %36 = load i32, i32* %5, align 8, !tbaa !9
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 5
  tail call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 %38, i32 8, i1 false)
  %39 = getelementptr inbounds i8, i8* %3, i64 16
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 8, !tbaa !13
  %41 = load i32, i32* %5, align 8, !tbaa !9
  %42 = add nsw i32 %41, -1
  %43 = getelementptr inbounds i8, i8* %3, i64 12
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4, !tbaa !14
  %45 = bitcast %struct.hashtable_t** %0 to i8**
  store i8* %3, i8** %45, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #3

declare i32 @numa_localize(%struct.tuple_t*, i32, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind
define void @destroy_hashtable(%struct.hashtable_t* nocapture) local_unnamed_addr #0 {
  %2 = bitcast %struct.hashtable_t* %0 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !12
  tail call void @free(i8* %3) #5
  %4 = bitcast %struct.hashtable_t* %0 to i8*
  tail call void @free(i8* %4) #5
  ret void
}

; Function Attrs: nounwind
define void @build_hashtable_st(%struct.hashtable_t* nocapture readonly, %struct.relation_t* nocapture readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 1
  %8 = load i32, i32* %7, align 8, !tbaa !15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %61, label %10

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 0
  %12 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %0, i64 0, i32 0
  br label %13

; <label>:13:                                     ; preds = %10, %51
  %14 = phi i32 [ 0, %10 ], [ %57, %51 ]
  %15 = zext i32 %14 to i64
  %16 = load %struct.tuple_t*, %struct.tuple_t** %11, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %16, i64 %15, i32 0
  %18 = load i32, i32* %17, align 4, !tbaa !18
  %19 = and i32 %18, %4
  %20 = lshr i32 %19, %6
  %21 = load %struct.bucket_t*, %struct.bucket_t** %12, align 8, !tbaa !12
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %21, i64 %22, i32 3
  %24 = load %struct.bucket_t*, %struct.bucket_t** %23, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %21, i64 %22, i32 1
  %26 = load i32, i32* %25, align 4, !tbaa !22
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %47

; <label>:28:                                     ; preds = %13
  %29 = icmp eq %struct.bucket_t* %24, null
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %24, i64 0, i32 1
  %32 = load i32, i32* %31, align 4, !tbaa !22
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %43

; <label>:34:                                     ; preds = %28, %30
  %35 = tail call noalias i8* @calloc(i64 1, i64 32) #5
  %36 = bitcast %struct.bucket_t** %23 to i8**
  store i8* %35, i8** %36, align 8, !tbaa !20
  %37 = getelementptr inbounds i8, i8* %35, i64 24
  %38 = bitcast i8* %37 to %struct.bucket_t**
  store %struct.bucket_t* %24, %struct.bucket_t** %38, align 8, !tbaa !20
  %39 = getelementptr inbounds i8, i8* %35, i64 4
  %40 = bitcast i8* %39 to i32*
  store i32 1, i32* %40, align 4, !tbaa !22
  %41 = getelementptr inbounds i8, i8* %35, i64 8
  %42 = bitcast i8* %41 to %struct.tuple_t*
  br label %51

; <label>:43:                                     ; preds = %30
  %44 = zext i32 %32 to i64
  %45 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %24, i64 0, i32 2, i64 %44
  %46 = add i32 %32, 1
  store i32 %46, i32* %31, align 4, !tbaa !22
  br label %51

; <label>:47:                                     ; preds = %13
  %48 = zext i32 %26 to i64
  %49 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %21, i64 %22, i32 2, i64 %48
  %50 = add i32 %26, 1
  store i32 %50, i32* %25, align 4, !tbaa !22
  br label %51

; <label>:51:                                     ; preds = %34, %43, %47
  %52 = phi %struct.tuple_t* [ %42, %34 ], [ %45, %43 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %16, i64 %15
  %54 = bitcast %struct.tuple_t* %53 to i64*
  %55 = bitcast %struct.tuple_t* %52 to i64*
  %56 = load i64, i64* %54, align 4
  store i64 %56, i64* %55, align 4
  %57 = add i32 %14, 1
  %58 = load i32, i32* %7, align 8, !tbaa !15
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %13, label %60

; <label>:60:                                     ; preds = %51
  br label %61

; <label>:61:                                     ; preds = %60, %2
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
define i64 @probe_hashtable(%struct.hashtable_t* nocapture readonly, %struct.relation_t* nocapture readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8, !tbaa !13
  %7 = tail call i64 @clock() #5
  store i64 %7, i64* @start, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %96, label %11

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 0
  %13 = load %struct.tuple_t*, %struct.tuple_t** %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %0, i64 0, i32 0
  %15 = load %struct.bucket_t*, %struct.bucket_t** %14, align 8, !tbaa !12
  %16 = zext i32 %9 to i64
  br label %17

; <label>:17:                                     ; preds = %11, %92
  %18 = phi i64 [ 0, %11 ], [ %93, %92 ]
  %19 = phi i64 [ 0, %11 ], [ %88, %92 ]
  %20 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %13, i64 %18, i32 0
  %21 = load i32, i32* %20, align 4, !tbaa !18
  %22 = and i32 %21, %4
  %23 = lshr i32 %22, %6
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %15, i64 %24
  %26 = insertelement <2 x i32> undef, i32 %21, i32 0
  %27 = shufflevector <2 x i32> %26, <2 x i32> undef, <2 x i32> zeroinitializer
  br label %28

; <label>:28:                                     ; preds = %87, %17
  %29 = phi i64 [ %19, %17 ], [ %88, %87 ]
  %30 = phi %struct.bucket_t* [ %25, %17 ], [ %90, %87 ]
  %31 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %30, i64 0, i32 1
  %32 = load i32, i32* %31, align 4, !tbaa !22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %87, label %34

; <label>:34:                                     ; preds = %28
  %35 = zext i32 %32 to i64
  %36 = icmp ult i32 %32, 4
  br i1 %36, label %73, label %37

; <label>:37:                                     ; preds = %34
  %38 = and i32 %32, 3
  %39 = zext i32 %38 to i64
  %40 = icmp eq i32 %38, 0
  %41 = select i1 %40, i64 4, i64 %39
  %42 = sub nsw i64 %35, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %73, label %44

; <label>:44:                                     ; preds = %37
  %45 = insertelement <2 x i64> <i64 undef, i64 0>, i64 %29, i32 0
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %65, %46 ]
  %48 = phi <2 x i64> [ %45, %44 ], [ %63, %46 ]
  %49 = phi <2 x i64> [ zeroinitializer, %44 ], [ %64, %46 ]
  %50 = or i64 %47, 2
  %51 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %15, i64 %24, i32 2, i64 %47, i32 0
  %52 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %15, i64 %24, i32 2, i64 %50, i32 0
  %53 = bitcast i32* %51 to <4 x i32>*
  %54 = bitcast i32* %52 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %53, align 4, !tbaa !18
  %56 = shufflevector <4 x i32> %55, <4 x i32> undef, <2 x i32> <i32 0, i32 2>
  %57 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !18
  %58 = shufflevector <4 x i32> %57, <4 x i32> undef, <2 x i32> <i32 0, i32 2>
  %59 = icmp eq <2 x i32> %27, %56
  %60 = icmp eq <2 x i32> %27, %58
  %61 = zext <2 x i1> %59 to <2 x i64>
  %62 = zext <2 x i1> %60 to <2 x i64>
  %63 = add nsw <2 x i64> %61, %48
  %64 = add nsw <2 x i64> %62, %49
  %65 = add i64 %47, 4
  %66 = icmp eq i64 %65, %42
  br i1 %66, label %67, label %46, !llvm.loop !25

; <label>:67:                                     ; preds = %46
  %68 = add <2 x i64> %64, %63
  %69 = shufflevector <2 x i64> %68, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %70 = add <2 x i64> %68, %69
  %71 = extractelement <2 x i64> %70, i32 0
  %72 = icmp eq i64 %41, 0
  br i1 %72, label %87, label %73

; <label>:73:                                     ; preds = %67, %37, %34
  %74 = phi i64 [ 0, %37 ], [ 0, %34 ], [ %42, %67 ]
  %75 = phi i64 [ %29, %37 ], [ %29, %34 ], [ %71, %67 ]
  br label %76

; <label>:76:                                     ; preds = %73, %76
  %77 = phi i64 [ %84, %76 ], [ %74, %73 ]
  %78 = phi i64 [ %83, %76 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %15, i64 %24, i32 2, i64 %77, i32 0
  %80 = load i32, i32* %79, align 4, !tbaa !18
  %81 = icmp eq i32 %21, %80
  %82 = zext i1 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp ult i64 %84, %35
  br i1 %85, label %76, label %86, !llvm.loop !28

; <label>:86:                                     ; preds = %76
  br label %87

; <label>:87:                                     ; preds = %86, %67, %28
  %88 = phi i64 [ %29, %28 ], [ %71, %67 ], [ %83, %86 ]
  %89 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %30, i64 0, i32 3
  %90 = load %struct.bucket_t*, %struct.bucket_t** %89, align 8, !tbaa !20
  %91 = icmp eq %struct.bucket_t* %90, null
  br i1 %91, label %92, label %28

; <label>:92:                                     ; preds = %87
  %93 = add nuw nsw i64 %18, 1
  %94 = icmp ult i64 %93, %16
  br i1 %94, label %17, label %95

; <label>:95:                                     ; preds = %92
  br label %96

; <label>:96:                                     ; preds = %95, %2
  %97 = phi i64 [ 0, %2 ], [ %88, %95 ]
  %98 = tail call i64 @clock() #5
  store i64 %98, i64* @end, align 8, !tbaa !23
  %99 = load i64, i64* @start, align 8, !tbaa !23
  %100 = sub nsw i64 %98, %99
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %101, 1.000000e+06
  store double %102, double* @cpu_time_used, align 8, !tbaa !30
  %103 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %102)
  ret i64 %97
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
define i64 @NPO_st(%struct.relation_t* nocapture readonly, %struct.relation_t* nocapture readonly, i32) local_unnamed_addr #0 {
  %4 = alloca %struct.hashtable_t*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = bitcast %struct.hashtable_t** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #5
  %8 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #5
  %9 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #5
  %10 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !15
  %12 = lshr i32 %11, 3
  call void @allocate_hashtable(%struct.hashtable_t** nonnull %4, i32 %12)
  %13 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #5
  %14 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %14, i64 0, i32 2
  %16 = load i32, i32* %15, align 4, !tbaa !14
  %17 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %14, i64 0, i32 3
  %18 = load i32, i32* %17, align 8, !tbaa !13
  %19 = load i32, i32* %10, align 8, !tbaa !15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %74, label %21

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %0, i64 0, i32 0
  %23 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %14, i64 0, i32 0
  br label %24

; <label>:24:                                     ; preds = %62, %21
  %25 = phi i32 [ 0, %21 ], [ %68, %62 ]
  %26 = zext i32 %25 to i64
  %27 = load %struct.tuple_t*, %struct.tuple_t** %22, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %27, i64 %26, i32 0
  %29 = load i32, i32* %28, align 4, !tbaa !18
  %30 = and i32 %29, %16
  %31 = lshr i32 %30, %18
  %32 = load %struct.bucket_t*, %struct.bucket_t** %23, align 8, !tbaa !12
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %32, i64 %33, i32 3
  %35 = load %struct.bucket_t*, %struct.bucket_t** %34, align 8, !tbaa !20
  %36 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %32, i64 %33, i32 1
  %37 = load i32, i32* %36, align 4, !tbaa !22
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %58

; <label>:39:                                     ; preds = %24
  %40 = icmp eq %struct.bucket_t* %35, null
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %35, i64 0, i32 1
  %43 = load i32, i32* %42, align 4, !tbaa !22
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %41, %39
  %46 = tail call noalias i8* @calloc(i64 1, i64 32) #5
  %47 = bitcast %struct.bucket_t** %34 to i8**
  store i8* %46, i8** %47, align 8, !tbaa !20
  %48 = getelementptr inbounds i8, i8* %46, i64 24
  %49 = bitcast i8* %48 to %struct.bucket_t**
  store %struct.bucket_t* %35, %struct.bucket_t** %49, align 8, !tbaa !20
  %50 = getelementptr inbounds i8, i8* %46, i64 4
  %51 = bitcast i8* %50 to i32*
  store i32 1, i32* %51, align 4, !tbaa !22
  %52 = getelementptr inbounds i8, i8* %46, i64 8
  %53 = bitcast i8* %52 to %struct.tuple_t*
  br label %62

; <label>:54:                                     ; preds = %41
  %55 = zext i32 %43 to i64
  %56 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %35, i64 0, i32 2, i64 %55
  %57 = add i32 %43, 1
  store i32 %57, i32* %42, align 4, !tbaa !22
  br label %62

; <label>:58:                                     ; preds = %24
  %59 = zext i32 %37 to i64
  %60 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %32, i64 %33, i32 2, i64 %59
  %61 = add i32 %37, 1
  store i32 %61, i32* %36, align 4, !tbaa !22
  br label %62

; <label>:62:                                     ; preds = %58, %54, %45
  %63 = phi %struct.tuple_t* [ %53, %45 ], [ %56, %54 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %27, i64 %26
  %65 = bitcast %struct.tuple_t* %64 to i64*
  %66 = bitcast %struct.tuple_t* %63 to i64*
  %67 = load i64, i64* %65, align 4
  store i64 %67, i64* %66, align 4
  %68 = add i32 %25, 1
  %69 = load i32, i32* %10, align 8, !tbaa !15
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %24, label %71

; <label>:71:                                     ; preds = %62
  %72 = load i32, i32* %15, align 4, !tbaa !14
  %73 = load i32, i32* %17, align 8, !tbaa !13
  br label %74

; <label>:74:                                     ; preds = %71, %3
  %75 = phi i32 [ %73, %71 ], [ %18, %3 ]
  %76 = phi i32 [ %72, %71 ], [ %16, %3 ]
  %77 = tail call i64 @clock() #5
  store i64 %77, i64* @start, align 8, !tbaa !23
  %78 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 1
  %79 = load i32, i32* %78, align 8, !tbaa !15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %166, label %81

; <label>:81:                                     ; preds = %74
  %82 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 0
  %83 = load %struct.tuple_t*, %struct.tuple_t** %82, align 8, !tbaa !17
  %84 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %14, i64 0, i32 0
  %85 = load %struct.bucket_t*, %struct.bucket_t** %84, align 8, !tbaa !12
  %86 = zext i32 %79 to i64
  br label %87

; <label>:87:                                     ; preds = %162, %81
  %88 = phi i64 [ 0, %81 ], [ %163, %162 ]
  %89 = phi i64 [ 0, %81 ], [ %158, %162 ]
  %90 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %83, i64 %88, i32 0
  %91 = load i32, i32* %90, align 4, !tbaa !18
  %92 = and i32 %91, %76
  %93 = lshr i32 %92, %75
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %85, i64 %94
  %96 = insertelement <2 x i32> undef, i32 %91, i32 0
  %97 = shufflevector <2 x i32> %96, <2 x i32> undef, <2 x i32> zeroinitializer
  br label %98

; <label>:98:                                     ; preds = %157, %87
  %99 = phi i64 [ %89, %87 ], [ %158, %157 ]
  %100 = phi %struct.bucket_t* [ %95, %87 ], [ %160, %157 ]
  %101 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %100, i64 0, i32 1
  %102 = load i32, i32* %101, align 4, !tbaa !22
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %157, label %104

; <label>:104:                                    ; preds = %98
  %105 = zext i32 %102 to i64
  %106 = icmp ult i32 %102, 4
  br i1 %106, label %143, label %107

; <label>:107:                                    ; preds = %104
  %108 = and i32 %102, 3
  %109 = zext i32 %108 to i64
  %110 = icmp eq i32 %108, 0
  %111 = select i1 %110, i64 4, i64 %109
  %112 = sub nsw i64 %105, %111
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %143, label %114

; <label>:114:                                    ; preds = %107
  %115 = insertelement <2 x i64> <i64 undef, i64 0>, i64 %99, i32 0
  br label %116

; <label>:116:                                    ; preds = %116, %114
  %117 = phi i64 [ 0, %114 ], [ %135, %116 ]
  %118 = phi <2 x i64> [ %115, %114 ], [ %133, %116 ]
  %119 = phi <2 x i64> [ zeroinitializer, %114 ], [ %134, %116 ]
  %120 = or i64 %117, 2
  %121 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %85, i64 %94, i32 2, i64 %117, i32 0
  %122 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %85, i64 %94, i32 2, i64 %120, i32 0
  %123 = bitcast i32* %121 to <4 x i32>*
  %124 = bitcast i32* %122 to <4 x i32>*
  %125 = load <4 x i32>, <4 x i32>* %123, align 4, !tbaa !18
  %126 = shufflevector <4 x i32> %125, <4 x i32> undef, <2 x i32> <i32 0, i32 2>
  %127 = load <4 x i32>, <4 x i32>* %124, align 4, !tbaa !18
  %128 = shufflevector <4 x i32> %127, <4 x i32> undef, <2 x i32> <i32 0, i32 2>
  %129 = icmp eq <2 x i32> %97, %126
  %130 = icmp eq <2 x i32> %97, %128
  %131 = zext <2 x i1> %129 to <2 x i64>
  %132 = zext <2 x i1> %130 to <2 x i64>
  %133 = add nsw <2 x i64> %131, %118
  %134 = add nsw <2 x i64> %132, %119
  %135 = add i64 %117, 4
  %136 = icmp eq i64 %135, %112
  br i1 %136, label %137, label %116, !llvm.loop !32

; <label>:137:                                    ; preds = %116
  %138 = add <2 x i64> %134, %133
  %139 = shufflevector <2 x i64> %138, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %140 = add <2 x i64> %138, %139
  %141 = extractelement <2 x i64> %140, i32 0
  %142 = icmp eq i64 %111, 0
  br i1 %142, label %157, label %143

; <label>:143:                                    ; preds = %137, %107, %104
  %144 = phi i64 [ 0, %107 ], [ 0, %104 ], [ %112, %137 ]
  %145 = phi i64 [ %99, %107 ], [ %99, %104 ], [ %141, %137 ]
  br label %146

; <label>:146:                                    ; preds = %143, %146
  %147 = phi i64 [ %154, %146 ], [ %144, %143 ]
  %148 = phi i64 [ %153, %146 ], [ %145, %143 ]
  %149 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %85, i64 %94, i32 2, i64 %147, i32 0
  %150 = load i32, i32* %149, align 4, !tbaa !18
  %151 = icmp eq i32 %91, %150
  %152 = zext i1 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = add nuw nsw i64 %147, 1
  %155 = icmp eq i64 %154, %105
  br i1 %155, label %156, label %146, !llvm.loop !33

; <label>:156:                                    ; preds = %146
  br label %157

; <label>:157:                                    ; preds = %156, %137, %98
  %158 = phi i64 [ %99, %98 ], [ %141, %137 ], [ %153, %156 ]
  %159 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %100, i64 0, i32 3
  %160 = load %struct.bucket_t*, %struct.bucket_t** %159, align 8, !tbaa !20
  %161 = icmp eq %struct.bucket_t* %160, null
  br i1 %161, label %162, label %98

; <label>:162:                                    ; preds = %157
  %163 = add nuw nsw i64 %88, 1
  %164 = icmp eq i64 %163, %86
  br i1 %164, label %165, label %87

; <label>:165:                                    ; preds = %162
  br label %166

; <label>:166:                                    ; preds = %165, %74
  %167 = phi i64 [ 0, %74 ], [ %158, %165 ]
  %168 = tail call i64 @clock() #5
  store i64 %168, i64* @end, align 8, !tbaa !23
  %169 = load i64, i64* @start, align 8, !tbaa !23
  %170 = sub nsw i64 %168, %169
  %171 = sitofp i64 %170 to double
  %172 = fdiv double %171, 1.000000e+06
  store double %172, double* @cpu_time_used, align 8, !tbaa !30
  %173 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %172) #5
  %174 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #5
  %175 = load i32, i32* %78, align 8, !tbaa !15
  %176 = zext i32 %175 to i64
  %177 = getelementptr %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %178 = load i64, i64* %177, align 8, !tbaa !34
  %179 = getelementptr %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %180 = load i64, i64* %179, align 8, !tbaa !36
  %181 = getelementptr %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %182 = load i64, i64* %181, align 8, !tbaa !34
  %183 = getelementptr %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %184 = load i64, i64* %183, align 8, !tbaa !36
  tail call fastcc void @print_timing(i64 undef, i64 undef, i64 0, i64 %176, i64 %167, i64 %178, i64 %180, i64 %182, i64 %184)
  %185 = bitcast %struct.hashtable_t* %14 to i8**
  %186 = load i8*, i8** %185, align 8, !tbaa !12
  tail call void @free(i8* %186) #5
  %187 = bitcast %struct.hashtable_t* %14 to i8*
  tail call void @free(i8* %187) #5
  call void @llvm.lifetime.end(i64 16, i8* %9) #5
  call void @llvm.lifetime.end(i64 16, i8* %8) #5
  call void @llvm.lifetime.end(i64 8, i8* %7) #5
  ret i64 %167
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @print_timing(i64, i64, i64, i64, i64, i64, i64, i64, i64) unnamed_addr #0 {
  %10 = sub i64 %7, %5
  %11 = mul i64 %10, 1000000
  %12 = sub i64 %8, %6
  %13 = add i64 %12, %11
  %14 = sitofp i64 %13 to double
  %15 = uitofp i64 %0 to double
  %16 = uitofp i64 %3 to double
  %17 = fdiv double %15, %16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %0, i64 %1, i64 %2) #6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %23 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), double %14, i64 %4)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %29 = tail call i32 @fflush(%struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), double %17) #6
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %33 = tail call i32 @fflush(%struct._IO_FILE* %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %35 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %34)
  ret void
}

; Function Attrs: nounwind
define void @build_hashtable_mt(%struct.hashtable_t* nocapture readonly, %struct.relation_t* nocapture readonly, %struct.bucket_buffer_t** nocapture) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 1
  %5 = load i32, i32* %4, align 8, !tbaa !15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  br label %8

; <label>:8:                                      ; preds = %7, %8
  br label %8

; <label>:9:                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind
define noalias i8* @npo_thread(i8* nocapture) #0 {
  %2 = tail call noalias i8* @malloc(i64 32784) #5
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %4, align 8, !tbaa !1
  %5 = bitcast i8* %2 to %struct.bucket_buffer_t**
  store %struct.bucket_buffer_t* null, %struct.bucket_buffer_t** %5, align 8, !tbaa !7
  %6 = bitcast i8* %2 to %struct.bucket_buffer_t*
  %7 = getelementptr inbounds i8, i8* %0, i64 48
  %8 = bitcast i8* %7 to %union.pthread_barrier_t**
  %9 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %8, align 8, !tbaa !37
  %10 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %9) #5
  %11 = add i32 %10, 1
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.12, i64 0, i64 0))
  tail call void @exit(i32 1) #7
  unreachable

; <label>:15:                                     ; preds = %1
  %16 = bitcast i8* %0 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !39
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds i8, i8* %0, i64 88
  %21 = bitcast i8* %20 to %struct.timeval*
  %22 = tail call i32 @gettimeofday(%struct.timeval* %21, %struct.timezone* null) #5
  %23 = getelementptr inbounds i8, i8* %0, i64 80
  %24 = bitcast i8* %23 to i64*
  store i64 0, i64* %24, align 8, !tbaa !40
  br label %25

; <label>:25:                                     ; preds = %19, %15
  %26 = getelementptr inbounds i8, i8* %0, i64 8
  %27 = bitcast i8* %26 to %struct.hashtable_t**
  %28 = getelementptr inbounds i8, i8* %0, i64 24
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 8, !tbaa !15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %25
  br label %33

; <label>:33:                                     ; preds = %32, %33
  br label %33

; <label>:34:                                     ; preds = %25
  %35 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %8, align 8, !tbaa !37
  %36 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %35) #5
  %37 = add i32 %36, 1
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.12, i64 0, i64 0))
  tail call void @exit(i32 1) #7
  unreachable

; <label>:41:                                     ; preds = %34
  %42 = load %struct.hashtable_t*, %struct.hashtable_t** %27, align 8, !tbaa !41
  %43 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %42, i64 0, i32 2
  %44 = load i32, i32* %43, align 4, !tbaa !14
  %45 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %42, i64 0, i32 3
  %46 = load i32, i32* %45, align 8, !tbaa !13
  %47 = tail call i64 @clock() #5
  store i64 %47, i64* @start, align 8, !tbaa !23
  %48 = getelementptr inbounds i8, i8* %0, i64 40
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 8, !tbaa !15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %138, label %52

; <label>:52:                                     ; preds = %41
  %53 = getelementptr inbounds i8, i8* %0, i64 32
  %54 = bitcast i8* %53 to %struct.tuple_t**
  %55 = load %struct.tuple_t*, %struct.tuple_t** %54, align 8, !tbaa !17
  %56 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %42, i64 0, i32 0
  %57 = load %struct.bucket_t*, %struct.bucket_t** %56, align 8, !tbaa !12
  %58 = zext i32 %50 to i64
  br label %59

; <label>:59:                                     ; preds = %134, %52
  %60 = phi i64 [ 0, %52 ], [ %135, %134 ]
  %61 = phi i64 [ 0, %52 ], [ %130, %134 ]
  %62 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %55, i64 %60, i32 0
  %63 = load i32, i32* %62, align 4, !tbaa !18
  %64 = and i32 %63, %44
  %65 = lshr i32 %64, %46
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %57, i64 %66
  %68 = insertelement <2 x i32> undef, i32 %63, i32 0
  %69 = shufflevector <2 x i32> %68, <2 x i32> undef, <2 x i32> zeroinitializer
  br label %70

; <label>:70:                                     ; preds = %129, %59
  %71 = phi i64 [ %61, %59 ], [ %130, %129 ]
  %72 = phi %struct.bucket_t* [ %67, %59 ], [ %132, %129 ]
  %73 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %72, i64 0, i32 1
  %74 = load i32, i32* %73, align 4, !tbaa !22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %129, label %76

; <label>:76:                                     ; preds = %70
  %77 = zext i32 %74 to i64
  %78 = icmp ult i32 %74, 4
  br i1 %78, label %115, label %79

; <label>:79:                                     ; preds = %76
  %80 = and i32 %74, 3
  %81 = zext i32 %80 to i64
  %82 = icmp eq i32 %80, 0
  %83 = select i1 %82, i64 4, i64 %81
  %84 = sub nsw i64 %77, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %115, label %86

; <label>:86:                                     ; preds = %79
  %87 = insertelement <2 x i64> <i64 undef, i64 0>, i64 %71, i32 0
  br label %88

; <label>:88:                                     ; preds = %88, %86
  %89 = phi i64 [ 0, %86 ], [ %107, %88 ]
  %90 = phi <2 x i64> [ %87, %86 ], [ %105, %88 ]
  %91 = phi <2 x i64> [ zeroinitializer, %86 ], [ %106, %88 ]
  %92 = or i64 %89, 2
  %93 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %57, i64 %66, i32 2, i64 %89, i32 0
  %94 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %57, i64 %66, i32 2, i64 %92, i32 0
  %95 = bitcast i32* %93 to <4 x i32>*
  %96 = bitcast i32* %94 to <4 x i32>*
  %97 = load <4 x i32>, <4 x i32>* %95, align 4, !tbaa !18
  %98 = shufflevector <4 x i32> %97, <4 x i32> undef, <2 x i32> <i32 0, i32 2>
  %99 = load <4 x i32>, <4 x i32>* %96, align 4, !tbaa !18
  %100 = shufflevector <4 x i32> %99, <4 x i32> undef, <2 x i32> <i32 0, i32 2>
  %101 = icmp eq <2 x i32> %69, %98
  %102 = icmp eq <2 x i32> %69, %100
  %103 = zext <2 x i1> %101 to <2 x i64>
  %104 = zext <2 x i1> %102 to <2 x i64>
  %105 = add nsw <2 x i64> %103, %90
  %106 = add nsw <2 x i64> %104, %91
  %107 = add i64 %89, 4
  %108 = icmp eq i64 %107, %84
  br i1 %108, label %109, label %88, !llvm.loop !42

; <label>:109:                                    ; preds = %88
  %110 = add <2 x i64> %106, %105
  %111 = shufflevector <2 x i64> %110, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %112 = add <2 x i64> %110, %111
  %113 = extractelement <2 x i64> %112, i32 0
  %114 = icmp eq i64 %83, 0
  br i1 %114, label %129, label %115

; <label>:115:                                    ; preds = %109, %79, %76
  %116 = phi i64 [ 0, %79 ], [ 0, %76 ], [ %84, %109 ]
  %117 = phi i64 [ %71, %79 ], [ %71, %76 ], [ %113, %109 ]
  br label %118

; <label>:118:                                    ; preds = %115, %118
  %119 = phi i64 [ %126, %118 ], [ %116, %115 ]
  %120 = phi i64 [ %125, %118 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %57, i64 %66, i32 2, i64 %119, i32 0
  %122 = load i32, i32* %121, align 4, !tbaa !18
  %123 = icmp eq i32 %63, %122
  %124 = zext i1 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = add nuw nsw i64 %119, 1
  %127 = icmp eq i64 %126, %77
  br i1 %127, label %128, label %118, !llvm.loop !43

; <label>:128:                                    ; preds = %118
  br label %129

; <label>:129:                                    ; preds = %128, %109, %70
  %130 = phi i64 [ %71, %70 ], [ %113, %109 ], [ %125, %128 ]
  %131 = getelementptr inbounds %struct.bucket_t, %struct.bucket_t* %72, i64 0, i32 3
  %132 = load %struct.bucket_t*, %struct.bucket_t** %131, align 8, !tbaa !20
  %133 = icmp eq %struct.bucket_t* %132, null
  br i1 %133, label %134, label %70

; <label>:134:                                    ; preds = %129
  %135 = add nuw nsw i64 %60, 1
  %136 = icmp eq i64 %135, %58
  br i1 %136, label %137, label %59

; <label>:137:                                    ; preds = %134
  br label %138

; <label>:138:                                    ; preds = %137, %41
  %139 = phi i64 [ 0, %41 ], [ %130, %137 ]
  %140 = tail call i64 @clock() #5
  store i64 %140, i64* @end, align 8, !tbaa !23
  %141 = load i64, i64* @start, align 8, !tbaa !23
  %142 = sub nsw i64 %140, %141
  %143 = sitofp i64 %142 to double
  %144 = fdiv double %143, 1.000000e+06
  store double %144, double* @cpu_time_used, align 8, !tbaa !30
  %145 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %144) #5
  %146 = getelementptr inbounds i8, i8* %0, i64 56
  %147 = bitcast i8* %146 to i64*
  store i64 %139, i64* %147, align 8, !tbaa !44
  %148 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %8, align 8, !tbaa !37
  %149 = tail call i32 @pthread_barrier_wait(%union.pthread_barrier_t* %148) #5
  %150 = add i32 %149, 1
  %151 = icmp ugt i32 %150, 1
  br i1 %151, label %152, label %154

; <label>:152:                                    ; preds = %138
  %153 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.12, i64 0, i64 0))
  tail call void @exit(i32 1) #7
  unreachable

; <label>:154:                                    ; preds = %138
  %155 = load i32, i32* %16, align 8, !tbaa !39
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

; <label>:157:                                    ; preds = %154
  %158 = getelementptr inbounds i8, i8* %0, i64 104
  %159 = bitcast i8* %158 to %struct.timeval*
  %160 = tail call i32 @gettimeofday(%struct.timeval* %159, %struct.timezone* null) #5
  br label %161

; <label>:161:                                    ; preds = %157, %154
  br label %162

; <label>:162:                                    ; preds = %161, %162
  %163 = phi %struct.bucket_buffer_t* [ %165, %162 ], [ %6, %161 ]
  %164 = getelementptr inbounds %struct.bucket_buffer_t, %struct.bucket_buffer_t* %163, i64 0, i32 0
  %165 = load %struct.bucket_buffer_t*, %struct.bucket_buffer_t** %164, align 8, !tbaa !7
  %166 = bitcast %struct.bucket_buffer_t* %163 to i8*
  tail call void @free(i8* %166) #5
  %167 = icmp eq %struct.bucket_buffer_t* %165, null
  br i1 %167, label %168, label %162

; <label>:168:                                    ; preds = %162
  ret i8* null
}

; Function Attrs: nounwind
declare i32 @pthread_barrier_wait(%union.pthread_barrier_t*) local_unnamed_addr #2

; Function Attrs: nounwind
define i64 @NPO(%struct.relation_t* nocapture readonly, %struct.relation_t* nocapture readonly, i32) local_unnamed_addr #0 {
  %4 = alloca %struct.hashtable_t*, align 8
  %5 = alloca %struct.cpu_set_t, align 8
  %6 = alloca %union.pthread_attr_t, align 8
  %7 = alloca %union.pthread_barrier_t, align 8
  %8 = bitcast %struct.hashtable_t** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #5
  %9 = bitcast %struct.cpu_set_t* %5 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %9) #5
  %10 = zext i32 %2 to i64
  %11 = tail call i8* @llvm.stacksave()
  %12 = alloca %struct.arg_t, i64 %10, align 8
  %13 = alloca i64, i64 %10, align 8
  %14 = bitcast %union.pthread_attr_t* %6 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %14) #5
  %15 = bitcast %union.pthread_barrier_t* %7 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #5
  %16 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %0, i64 0, i32 1
  %17 = load i32, i32* %16, align 8, !tbaa !15
  %18 = lshr i32 %17, 1
  call void @allocate_hashtable(%struct.hashtable_t** nonnull %4, i32 %18)
  %19 = load i32, i32* %16, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 1
  %21 = load i32, i32* %20, align 8, !tbaa !15
  %22 = sdiv i32 %19, %2
  %23 = sdiv i32 %21, %2
  %24 = call i32 @pthread_barrier_init(%union.pthread_barrier_t* nonnull %7, %union.pthread_barrierattr_t* null, i32 %2) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %3
  %27 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @str.13, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:28:                                     ; preds = %3
  %29 = call i32 @pthread_attr_init(%union.pthread_attr_t* nonnull %6) #5
  %30 = icmp sgt i32 %2, 0
  br i1 %30, label %31, label %102

; <label>:31:                                     ; preds = %28
  %32 = bitcast %struct.hashtable_t** %4 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i32 %2, -1
  %35 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %0, i64 0, i32 0
  %36 = getelementptr inbounds %struct.relation_t, %struct.relation_t* %1, i64 0, i32 0
  %37 = sext i32 %23 to i64
  %38 = sext i32 %22 to i64
  %39 = sext i32 %2 to i64
  %40 = zext i32 %34 to i64
  br label %43

; <label>:41:                                     ; preds = %84
  br i1 %30, label %42, label %102

; <label>:42:                                     ; preds = %41
  br label %89

; <label>:43:                                     ; preds = %31, %84
  %44 = phi i64 [ 0, %31 ], [ %87, %84 ]
  %45 = phi i32 [ %19, %31 ], [ %86, %84 ]
  %46 = phi i32 [ %21, %31 ], [ %85, %84 ]
  %47 = trunc i64 %44 to i32
  %48 = call i32 @get_cpu_id(i32 %47) #5
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 128, i32 8, i1 false)
  %49 = sext i32 %48 to i64
  %50 = icmp ult i32 %48, 1024
  br i1 %50, label %51, label %58

; <label>:51:                                     ; preds = %43
  %52 = and i64 %49, 63
  %53 = shl i64 1, %52
  %54 = lshr i64 %49, 6
  %55 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %5, i64 0, i32 0, i64 %54
  %56 = load i64, i64* %55, align 8, !tbaa !23
  %57 = or i64 %56, %53
  store i64 %57, i64* %55, align 8, !tbaa !23
  br label %58

; <label>:58:                                     ; preds = %43, %51
  %59 = call i32 @pthread_attr_setaffinity_np(%union.pthread_attr_t* nonnull %6, i64 128, %struct.cpu_set_t* nonnull %5) #5
  %60 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %44
  %61 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %60, i64 0, i32 0
  store i32 %47, i32* %61, align 8, !tbaa !39
  %62 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %44, i32 1
  %63 = bitcast %struct.hashtable_t** %62 to i64*
  store i64 %33, i64* %63, align 8, !tbaa !41
  %64 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %44, i32 4
  store %union.pthread_barrier_t* %7, %union.pthread_barrier_t** %64, align 8, !tbaa !37
  %65 = icmp eq i64 %44, %40
  %66 = select i1 %65, i32 %45, i32 %22
  %67 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %44, i32 2, i32 1
  store i32 %66, i32* %67, align 8, !tbaa !45
  %68 = load %struct.tuple_t*, %struct.tuple_t** %35, align 8, !tbaa !17
  %69 = mul nsw i64 %44, %38
  %70 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %68, i64 %69
  %71 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %44, i32 2, i32 0
  store %struct.tuple_t* %70, %struct.tuple_t** %71, align 8, !tbaa !46
  %72 = select i1 %65, i32 %46, i32 %23
  %73 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %44, i32 3, i32 1
  store i32 %72, i32* %73, align 8, !tbaa !47
  %74 = load %struct.tuple_t*, %struct.tuple_t** %36, align 8, !tbaa !17
  %75 = mul nsw i64 %44, %37
  %76 = getelementptr inbounds %struct.tuple_t, %struct.tuple_t* %74, i64 %75
  %77 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %44, i32 3, i32 0
  store %struct.tuple_t* %76, %struct.tuple_t** %77, align 8, !tbaa !48
  %78 = getelementptr inbounds i64, i64* %13, i64 %44
  %79 = bitcast %struct.arg_t* %60 to i8*
  %80 = call i32 @pthread_create(i64* %78, %union.pthread_attr_t* nonnull %6, i8* (i8*)* nonnull @npo_thread, i8* %79) #5
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

; <label>:82:                                     ; preds = %58
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  call void @exit(i32 -1) #7
  unreachable

; <label>:84:                                     ; preds = %58
  %85 = sub nsw i32 %46, %23
  %86 = sub nsw i32 %45, %22
  %87 = add nuw nsw i64 %44, 1
  %88 = icmp slt i64 %87, %39
  br i1 %88, label %43, label %41

; <label>:89:                                     ; preds = %42, %89
  %90 = phi i64 [ %98, %89 ], [ 0, %42 ]
  %91 = phi i64 [ %97, %89 ], [ 0, %42 ]
  %92 = getelementptr inbounds i64, i64* %13, i64 %90
  %93 = load i64, i64* %92, align 8, !tbaa !23
  %94 = call i32 @pthread_join(i64 %93, i8** null) #5
  %95 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %90, i32 5
  %96 = load i64, i64* %95, align 8, !tbaa !44
  %97 = add nsw i64 %96, %91
  %98 = add nuw nsw i64 %90, 1
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, %2
  br i1 %100, label %101, label %89

; <label>:101:                                    ; preds = %89
  br label %102

; <label>:102:                                    ; preds = %101, %28, %41
  %103 = phi i64 [ 0, %41 ], [ 0, %28 ], [ %97, %101 ]
  %104 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 0, i32 6
  %105 = load i64, i64* %104, align 8, !tbaa !49
  %106 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 0, i32 7
  %107 = load i64, i64* %106, align 8, !tbaa !50
  %108 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 0, i32 8
  %109 = load i64, i64* %108, align 8, !tbaa !40
  %110 = load i32, i32* %20, align 8, !tbaa !15
  %111 = zext i32 %110 to i64
  %112 = getelementptr %struct.arg_t, %struct.arg_t* %12, i64 0, i32 9, i32 0
  %113 = load i64, i64* %112, align 8, !tbaa !34
  %114 = getelementptr %struct.arg_t, %struct.arg_t* %12, i64 0, i32 9, i32 1
  %115 = load i64, i64* %114, align 8, !tbaa !36
  %116 = getelementptr %struct.arg_t, %struct.arg_t* %12, i64 0, i32 10, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !34
  %118 = getelementptr %struct.arg_t, %struct.arg_t* %12, i64 0, i32 10, i32 1
  %119 = load i64, i64* %118, align 8, !tbaa !36
  call fastcc void @print_timing(i64 %105, i64 %107, i64 %109, i64 %111, i64 %103, i64 %113, i64 %115, i64 %117, i64 %119)
  %120 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8, !tbaa !8
  %121 = bitcast %struct.hashtable_t* %120 to i8**
  %122 = load i8*, i8** %121, align 8, !tbaa !12
  call void @free(i8* %122) #5
  %123 = bitcast %struct.hashtable_t* %120 to i8*
  call void @free(i8* %123) #5
  call void @llvm.lifetime.end(i64 32, i8* %15) #5
  call void @llvm.lifetime.end(i64 64, i8* %14) #5
  call void @llvm.stackrestore(i8* %11)
  call void @llvm.lifetime.end(i64 128, i8* %9) #5
  call void @llvm.lifetime.end(i64 8, i8* %8) #5
  ret i64 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #5

; Function Attrs: nounwind
declare i32 @pthread_barrier_init(%union.pthread_barrier_t*, %union.pthread_barrierattr_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) local_unnamed_addr #2

declare i32 @get_cpu_id(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_attr_setaffinity_np(%union.pthread_attr_t*, i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #2

declare i32 @pthread_join(i64, i8**) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #5

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!1 = !{!2, !6, i64 8}
!2 = !{!"bucket_buffer_t", !3, i64 0, !6, i64 8, !4, i64 16}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"int", !4, i64 0}
!7 = !{!2, !3, i64 0}
!8 = !{!3, !3, i64 0}
!9 = !{!10, !6, i64 8}
!10 = !{!"hashtable_t", !3, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!11 = !{!6, !6, i64 0}
!12 = !{!10, !3, i64 0}
!13 = !{!10, !6, i64 16}
!14 = !{!10, !6, i64 12}
!15 = !{!16, !6, i64 8}
!16 = !{!"relation_t", !3, i64 0, !6, i64 8}
!17 = !{!16, !3, i64 0}
!18 = !{!19, !6, i64 0}
!19 = !{!"tuple_t", !6, i64 0, !6, i64 4}
!20 = !{!21, !3, i64 24}
!21 = !{!"bucket_t", !4, i64 0, !6, i64 4, !4, i64 8, !3, i64 24}
!22 = !{!21, !6, i64 4}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.vectorize.width", i32 1}
!27 = !{!"llvm.loop.interleave.count", i32 1}
!28 = distinct !{!28, !29, !26, !27}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !4, i64 0}
!32 = distinct !{!32, !26, !27}
!33 = distinct !{!33, !29, !26, !27}
!34 = !{!35, !24, i64 0}
!35 = !{!"timeval", !24, i64 0, !24, i64 8}
!36 = !{!35, !24, i64 8}
!37 = !{!38, !3, i64 48}
!38 = !{!"arg_t", !6, i64 0, !3, i64 8, !16, i64 16, !16, i64 32, !3, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !35, i64 88, !35, i64 104}
!39 = !{!38, !6, i64 0}
!40 = !{!38, !24, i64 80}
!41 = !{!38, !3, i64 8}
!42 = distinct !{!42, !26, !27}
!43 = distinct !{!43, !29, !26, !27}
!44 = !{!38, !24, i64 56}
!45 = !{!38, !6, i64 24}
!46 = !{!38, !3, i64 16}
!47 = !{!38, !6, i64 40}
!48 = !{!38, !3, i64 32}
!49 = !{!38, !24, i64 64}
!50 = !{!38, !24, i64 72}
