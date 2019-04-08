; ModuleID = 'randacc.c'
source_filename = "randacc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define i64 @HPCC_starts(i64) local_unnamed_addr #0 {
  %2 = alloca [64 x i64], align 16
  %3 = bitcast [64 x i64]* %2 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %3) #4
  %4 = icmp sgt i64 %0, 0
  %5 = select i1 %4, i64 %0, i64 0
  %6 = add i64 %5, 1317624576693539400
  %7 = sub i64 %6, %0
  %8 = urem i64 %7, 1317624576693539401
  %9 = sub i64 %7, %8
  %10 = add i64 %9, %0
  %11 = icmp slt i64 %10, 1317624576693539401
  %12 = select i1 %11, i64 %10, i64 1317624576693539401
  %13 = xor i64 %12, -1
  %14 = add i64 %10, %13
  %15 = add i64 %14, 1317624576693539401
  %16 = urem i64 %15, 1317624576693539401
  %17 = sub i64 %16, %15
  %18 = add i64 %10, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %99, label %20

; <label>:20:                                     ; preds = %1
  br label %21

; <label>:21:                                     ; preds = %21, %20
  %22 = phi i64 [ 0, %20 ], [ %43, %21 ]
  %23 = phi i64 [ 1, %20 ], [ %42, %21 ]
  %24 = getelementptr inbounds [64 x i64], [64 x i64]* %2, i64 0, i64 %22
  store i64 %23, i64* %24, align 16, !tbaa !1
  %25 = shl i64 %23, 1
  %26 = ashr i64 %23, 63
  %27 = and i64 %26, 7
  %28 = xor i64 %27, %25
  %29 = shl i64 %28, 1
  %30 = ashr i64 %25, 63
  %31 = and i64 %30, 7
  %32 = xor i64 %29, %31
  %33 = or i64 %22, 1
  %34 = getelementptr inbounds [64 x i64], [64 x i64]* %2, i64 0, i64 %33
  store i64 %32, i64* %34, align 8, !tbaa !1
  %35 = shl i64 %32, 1
  %36 = ashr i64 %29, 63
  %37 = and i64 %36, 7
  %38 = xor i64 %37, %35
  %39 = shl i64 %38, 1
  %40 = ashr i64 %35, 63
  %41 = and i64 %40, 7
  %42 = xor i64 %39, %41
  %43 = add nsw i64 %22, 2
  %44 = icmp eq i64 %43, 64
  br i1 %44, label %45, label %21

; <label>:45:                                     ; preds = %21
  br label %51

; <label>:46:                                     ; preds = %115, %109, %57, %51
  %47 = phi i32 [ %52, %51 ], [ %58, %57 ], [ %110, %109 ], [ %116, %115 ]
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %99

; <label>:49:                                     ; preds = %46
  %50 = zext i32 %47 to i64
  br label %63

; <label>:51:                                     ; preds = %115, %45
  %52 = phi i32 [ 62, %45 ], [ %116, %115 ]
  %53 = zext i32 %52 to i64
  %54 = shl i64 1, %53
  %55 = and i64 %54, %18
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %46

; <label>:57:                                     ; preds = %51
  %58 = add nsw i32 %52, -1
  %59 = zext i32 %58 to i64
  %60 = shl i64 1, %59
  %61 = and i64 %60, %18
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %109, label %46

; <label>:63:                                     ; preds = %49, %94
  %64 = phi i64 [ %50, %49 ], [ %97, %94 ]
  %65 = phi i64 [ 2, %49 ], [ %95, %94 ]
  br label %66

; <label>:66:                                     ; preds = %105, %63
  %67 = phi i64 [ 0, %63 ], [ %107, %105 ]
  %68 = phi i64 [ 0, %63 ], [ %106, %105 ]
  %69 = shl i64 1, %67
  %70 = and i64 %69, %65
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %76, label %72

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds [64 x i64], [64 x i64]* %2, i64 0, i64 %67
  %74 = load i64, i64* %73, align 16, !tbaa !1
  %75 = xor i64 %74, %68
  br label %76

; <label>:76:                                     ; preds = %66, %72
  %77 = phi i64 [ %75, %72 ], [ %68, %66 ]
  %78 = or i64 %67, 1
  %79 = shl i64 1, %78
  %80 = and i64 %79, %65
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %105, label %101

; <label>:82:                                     ; preds = %105
  %83 = trunc i64 %64 to i32
  %84 = add i64 %64, 4294967295
  %85 = and i64 %84, 4294967295
  %86 = shl i64 1, %85
  %87 = and i64 %86, %18
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %94, label %89

; <label>:89:                                     ; preds = %82
  %90 = shl i64 %106, 1
  %91 = ashr i64 %106, 63
  %92 = and i64 %91, 7
  %93 = xor i64 %92, %90
  br label %94

; <label>:94:                                     ; preds = %89, %82
  %95 = phi i64 [ %93, %89 ], [ %106, %82 ]
  %96 = icmp sgt i32 %83, 1
  %97 = add nsw i64 %64, -1
  br i1 %96, label %63, label %98

; <label>:98:                                     ; preds = %94
  br label %99

; <label>:99:                                     ; preds = %98, %46, %1
  %100 = phi i64 [ 1, %1 ], [ 2, %46 ], [ %95, %98 ]
  call void @llvm.lifetime.end(i64 512, i8* %3) #4
  ret i64 %100

; <label>:101:                                    ; preds = %76
  %102 = getelementptr inbounds [64 x i64], [64 x i64]* %2, i64 0, i64 %78
  %103 = load i64, i64* %102, align 8, !tbaa !1
  %104 = xor i64 %103, %77
  br label %105

; <label>:105:                                    ; preds = %101, %76
  %106 = phi i64 [ %104, %101 ], [ %77, %76 ]
  %107 = add nsw i64 %67, 2
  %108 = icmp eq i64 %107, 64
  br i1 %108, label %82, label %66

; <label>:109:                                    ; preds = %57
  %110 = add nsw i32 %52, -2
  %111 = zext i32 %110 to i64
  %112 = shl i64 1, %111
  %113 = and i64 %112, %18
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %46

; <label>:115:                                    ; preds = %109
  %116 = add nsw i32 %52, -3
  %117 = icmp sgt i32 %52, 2
  br i1 %117, label %51, label %46
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #2 {
  %3 = alloca [128 x i64], align 16
  %4 = getelementptr inbounds i8*, i8** %1, i64 1
  %5 = load i8*, i8** %4, align 8, !tbaa !5
  %6 = tail call i64 @strtol(i8* nocapture nonnull %5, i8** null, i32 10) #4
  %7 = trunc i64 %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 1.250000e-01
  br label %10

; <label>:10:                                     ; preds = %10, %2
  %11 = phi double [ %9, %2 ], [ %13, %10 ]
  %12 = phi i64 [ 1, %2 ], [ %15, %10 ]
  %13 = fmul double %11, 5.000000e-01
  %14 = fcmp ult double %13, 1.000000e+00
  %15 = shl i64 %12, 1
  br i1 %14, label %16, label %10

; <label>:16:                                     ; preds = %10
  %17 = shl i64 %12, 3
  %18 = tail call noalias i8* @malloc(i64 %17) #4
  %19 = bitcast i8* %18 to i64*
  %20 = icmp eq i8* %18, null
  br i1 %20, label %144, label %21

; <label>:21:                                     ; preds = %16
  %22 = icmp eq i64 %12, 0
  br i1 %22, label %97, label %23

; <label>:23:                                     ; preds = %21
  %24 = icmp ult i64 %12, 4
  br i1 %24, label %89, label %25

; <label>:25:                                     ; preds = %23
  %26 = and i64 %12, -4
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %89, label %28

; <label>:28:                                     ; preds = %25
  %29 = add i64 %26, -4
  %30 = lshr exact i64 %29, 2
  %31 = add nuw nsw i64 %30, 1
  %32 = and i64 %31, 3
  %33 = icmp ult i64 %29, 12
  br i1 %33, label %70, label %34

; <label>:34:                                     ; preds = %28
  %35 = sub nsw i64 %31, %32
  br label %36

; <label>:36:                                     ; preds = %36, %34
  %37 = phi <2 x i64> [ <i64 0, i64 1>, %34 ], [ %61, %36 ]
  %38 = phi i64 [ %35, %34 ], [ %67, %36 ]
  %39 = add <2 x i64> %37, <i64 2, i64 2>
  %40 = add <2 x i64> %37, <i64 4, i64 4>
  %41 = extractelement <2 x i64> %37, i32 0
  %42 = getelementptr inbounds i64, i64* %19, i64 %41
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> %37, <2 x i64>* %43, align 8, !tbaa !1
  %44 = getelementptr i64, i64* %42, i64 2
  %45 = bitcast i64* %44 to <2 x i64>*
  store <2 x i64> %39, <2 x i64>* %45, align 8, !tbaa !1
  %46 = add <2 x i64> %37, <i64 6, i64 6>
  %47 = add <2 x i64> %37, <i64 8, i64 8>
  %48 = extractelement <2 x i64> %40, i32 0
  %49 = getelementptr inbounds i64, i64* %19, i64 %48
  %50 = bitcast i64* %49 to <2 x i64>*
  store <2 x i64> %40, <2 x i64>* %50, align 8, !tbaa !1
  %51 = getelementptr i64, i64* %49, i64 2
  %52 = bitcast i64* %51 to <2 x i64>*
  store <2 x i64> %46, <2 x i64>* %52, align 8, !tbaa !1
  %53 = add <2 x i64> %37, <i64 10, i64 10>
  %54 = add <2 x i64> %37, <i64 12, i64 12>
  %55 = extractelement <2 x i64> %47, i32 0
  %56 = getelementptr inbounds i64, i64* %19, i64 %55
  %57 = bitcast i64* %56 to <2 x i64>*
  store <2 x i64> %47, <2 x i64>* %57, align 8, !tbaa !1
  %58 = getelementptr i64, i64* %56, i64 2
  %59 = bitcast i64* %58 to <2 x i64>*
  store <2 x i64> %53, <2 x i64>* %59, align 8, !tbaa !1
  %60 = add <2 x i64> %37, <i64 14, i64 14>
  %61 = add <2 x i64> %37, <i64 16, i64 16>
  %62 = extractelement <2 x i64> %54, i32 0
  %63 = getelementptr inbounds i64, i64* %19, i64 %62
  %64 = bitcast i64* %63 to <2 x i64>*
  store <2 x i64> %54, <2 x i64>* %64, align 8, !tbaa !1
  %65 = getelementptr i64, i64* %63, i64 2
  %66 = bitcast i64* %65 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %66, align 8, !tbaa !1
  %67 = add i64 %38, -4
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %36, !llvm.loop !7

; <label>:69:                                     ; preds = %36
  br label %70

; <label>:70:                                     ; preds = %69, %28
  %71 = phi <2 x i64> [ <i64 0, i64 1>, %28 ], [ %61, %69 ]
  %72 = icmp eq i64 %32, 0
  br i1 %72, label %87, label %73

; <label>:73:                                     ; preds = %70
  br label %74

; <label>:74:                                     ; preds = %74, %73
  %75 = phi <2 x i64> [ %78, %74 ], [ %71, %73 ]
  %76 = phi i64 [ %84, %74 ], [ %32, %73 ]
  %77 = add <2 x i64> %75, <i64 2, i64 2>
  %78 = add <2 x i64> %75, <i64 4, i64 4>
  %79 = extractelement <2 x i64> %75, i32 0
  %80 = getelementptr inbounds i64, i64* %19, i64 %79
  %81 = bitcast i64* %80 to <2 x i64>*
  store <2 x i64> %75, <2 x i64>* %81, align 8, !tbaa !1
  %82 = getelementptr i64, i64* %80, i64 2
  %83 = bitcast i64* %82 to <2 x i64>*
  store <2 x i64> %77, <2 x i64>* %83, align 8, !tbaa !1
  %84 = add i64 %76, -1
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %74, !llvm.loop !10

; <label>:86:                                     ; preds = %74
  br label %87

; <label>:87:                                     ; preds = %70, %86
  %88 = icmp eq i64 %12, %26
  br i1 %88, label %97, label %89

; <label>:89:                                     ; preds = %87, %25, %23
  %90 = phi i64 [ 0, %25 ], [ 0, %23 ], [ %26, %87 ]
  br label %91

; <label>:91:                                     ; preds = %89, %91
  %92 = phi i64 [ %94, %91 ], [ %90, %89 ]
  %93 = getelementptr inbounds i64, i64* %19, i64 %92
  store i64 %92, i64* %93, align 8, !tbaa !1
  %94 = add nuw i64 %92, 1
  %95 = icmp eq i64 %94, %12
  br i1 %95, label %96, label %91, !llvm.loop !12

; <label>:96:                                     ; preds = %91
  br label %97

; <label>:97:                                     ; preds = %96, %87, %21
  %98 = bitcast [128 x i64]* %3 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %98) #4
  %99 = lshr i64 %12, 5
  %100 = and i64 %99, 144115188075855871
  br label %105

; <label>:101:                                    ; preds = %105
  %102 = icmp eq i64 %100, 0
  br i1 %102, label %143, label %103

; <label>:103:                                    ; preds = %101
  %104 = add i64 %12, -1
  br label %112

; <label>:105:                                    ; preds = %105, %97
  %106 = phi i64 [ 0, %97 ], [ %110, %105 ]
  %107 = mul nuw i64 %106, %100
  %108 = tail call i64 @HPCC_starts(i64 %107) #4
  %109 = getelementptr inbounds [128 x i64], [128 x i64]* %3, i64 0, i64 %106
  store i64 %108, i64* %109, align 8, !tbaa !1
  %110 = add nuw nsw i64 %106, 1
  %111 = icmp eq i64 %110, 128
  br i1 %111, label %101, label %105

; <label>:112:                                    ; preds = %139, %103
  %113 = phi i64 [ 0, %103 ], [ %140, %139 ]
  br label %114

; <label>:114:                                    ; preds = %114, %112
  %115 = phi i64 [ 0, %112 ], [ %137, %114 ]
  %116 = getelementptr inbounds [128 x i64], [128 x i64]* %3, i64 0, i64 %115
  %117 = load i64, i64* %116, align 16, !tbaa !1
  %118 = shl i64 %117, 1
  %119 = ashr i64 %117, 63
  %120 = and i64 %119, 7
  %121 = xor i64 %120, %118
  store i64 %121, i64* %116, align 16, !tbaa !1
  %122 = and i64 %121, %104
  %123 = getelementptr inbounds i64, i64* %19, i64 %122
  %124 = load i64, i64* %123, align 8, !tbaa !1
  %125 = xor i64 %121, %124
  store i64 %125, i64* %123, align 8, !tbaa !1
  %126 = or i64 %115, 1
  %127 = getelementptr inbounds [128 x i64], [128 x i64]* %3, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8, !tbaa !1
  %129 = shl i64 %128, 1
  %130 = ashr i64 %128, 63
  %131 = and i64 %130, 7
  %132 = xor i64 %131, %129
  store i64 %132, i64* %127, align 8, !tbaa !1
  %133 = and i64 %132, %104
  %134 = getelementptr inbounds i64, i64* %19, i64 %133
  %135 = load i64, i64* %134, align 8, !tbaa !1
  %136 = xor i64 %132, %135
  store i64 %136, i64* %134, align 8, !tbaa !1
  %137 = add nsw i64 %115, 2
  %138 = icmp eq i64 %137, 128
  br i1 %138, label %139, label %114

; <label>:139:                                    ; preds = %114
  %140 = add nuw nsw i64 %113, 1
  %141 = icmp eq i64 %140, %100
  br i1 %141, label %142, label %112

; <label>:142:                                    ; preds = %139
  br label %143

; <label>:143:                                    ; preds = %142, %101
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %98) #4
  tail call void @free(i8* %18) #4
  br label %144

; <label>:144:                                    ; preds = %16, %143
  %145 = phi i32 [ 0, %143 ], [ 1, %16 ]
  ret i32 %145
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.vectorize.width", i32 1}
!9 = !{!"llvm.loop.interleave.count", i32 1}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !13, !8, !9}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
